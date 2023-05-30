import HAL.setBits

//Os valores nas constantes não estão corretos, são apenas para testar
const val SDXCLK = 0x04
const val SDX = 0x02
const val nSS_LCD = 0x01

const val Busy_Addr = 0x20
const val DOOR_ADDR = 0x08

// Envia tramas para os diferentes módulos Serial Receiver.
object SerialEmmiter {
    enum class Destination {LCD, DOOR}
    // Inicia a classe
    fun init() {
        HAL.init() // Iniciar a classe HAL
        setBits(nSS_LCD)// ATIVAR O SS A 1 (active low)
        HAL.clrBits(SDXCLK) // ATIVAR O CLK
        setBits(SDX)  // ATIVAR O DATA

    }
    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em ‘data’.
    fun send(addr: Destination, data: Int) {
        // Alterar o sinal LCDsel
        if (addr == Destination.LCD) HAL.clrBits(nSS_LCD) else HAL.clrBits(DOOR_ADDR)
        repeat(5) {
            //println(it)//Iterar 5 vezes sobre os bits de data
            val bit = data and (1 shl it) // Obter o bit de data
            if (bit != 0) setBits(SDX) else HAL.clrBits(SDX) // Escrever o bit de data
            setBits(SDXCLK) // ATIVAR O CLK
            //Thread.sleep(1000)
            HAL.clrBits(SDXCLK) // DESATIVAR O CLK
            //Thread.sleep(1000)

        }
        if (addr == Destination.LCD) HAL.setBits(nSS_LCD) else HAL.setBits(DOOR_ADDR)
    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean = HAL.isBit(Busy_Addr) // Se o accept for 0 então está ocupado
}

fun main(){
    SerialEmmiter.init()

    SerialEmmiter.send(SerialEmmiter.Destination.LCD,0x02)
    Thread.sleep(2000)
    SerialEmmiter.send(SerialEmmiter.Destination.LCD,0x05)
}