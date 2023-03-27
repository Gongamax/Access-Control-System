import isel.leic.UsbPort
import kotlin.math.E

// Escreve no LCD usando a interface a 4 bits.
object LCD {
        private var modeParallel : Boolean = true
        private const val LINES = 2
        private const val COLS = 16; // Dimensão do display.
        private const val CLEAR_DISPLAY = 0x01
        private var enable = false

        //Temporizações
        private const val Tas = 40*E-6//Address Setup Time
        private const val Tds = 80*E-6 //Data SetupTime
        private const val Th = 10*E-6 //Data Hold Time
        private const val Tc = 500 * E-6 //EnableCycleTime

        // Escreve um nibble de comando/dados no LCD em paralelo
        private fun writeNibbleParallel(rs: Boolean, data: Int) { //Função tem de estar de acordo com as temporizações
                if (rs){
                        Thread.sleep(Tas.toLong()) //Adress Setup Time
                        enable = true
                        UsbPort.write(data)
                        Thread.sleep(Tds.toLong()) // Data Setup Time
                        enable = false
                        Thread.sleep(Th.toLong())
                }
                Thread.sleep(Tc.toLong())  //Obrigatório esperar 500ns para se inserir novamente data
        }
        // Escreve um nibble de comando/dados no LCD em série
        private fun writeNibbleSerial(rs: Boolean, data: Int) {
                //Não fazer, pelo menos para já só mais à frente
        }
        // Escreve um nibble de comando/dados no LCD
        private fun writeNibble(rs: Boolean, data: Int) { //Esta função seleciona qual o writeNibble a usar
                val higherBitsMask = 0xF0
                val dataBits = data or higherBitsMask
                if (modeParallel) writeNibbleParallel(rs, dataBits)
                writeNibbleSerial(rs, data)
        }
        // Escreve um byte de comando/dados no LCD
        private fun writeByte(rs: Boolean, data: Int) {
                //Primeiro tem que se escrever os da parte alta
                writeNibble(true, data)
        }
        // Escreve um comando no LCD
        private fun writeCMD(data: Int) {
                writeByte(false, data)  //Para comandos o RS tem de estar a false
        }
        // Escreve um dado no LCD
        private fun writeDATA(data: Int) {
                writeByte(true, data) //Para escrever data o RS tem de estar a true
        }
        // Envia a sequência de iniciação para comunicação a 4 bits.
        fun init() {
                //Seguir a documentação de inciação
                //POWER_ON
                //WAIT TIME

                //Function set
                val functionSetBits = 0x30
                writeCMD(functionSetBits)
                Thread.sleep(5) //Wait for more than 4.1 sec
                writeCMD(functionSetBits)
                Thread.sleep(1)

                writeCMD(0x20) //Fnction Set
                writeCMD(0x80)  //Function Set
                writeCMD(0x28)  //Function Set
                writeCMD(0x08)   //Display off
                writeCMD(0x01)  //Display Clear
                writeCMD(0x06)  //EntryModeSet

        }
        // Escreve um caráter na posição corrente.
        fun write(c: Char) {
                //Ver o DDRam de acordo depois com o codigo ASCII
                writeDATA(c.code)

        }
        // Escreve uma string na posição corrente.
        fun write(text: String) {      //Para escrever String, tem de escrever char a char
                //for (i in text) write(i)
                text.forEach { write(it) }
        }

        // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
        fun cursor(line: Int, column: Int) {
                /*Set
                DDRAM
                address*/
                //writeCMD(0x80 or (line*0x40 + column))
        }
        // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
        fun clear() {
                writeByte(false, CLEAR_DISPLAY)
                cursor(0x00,0x00)
        }

}