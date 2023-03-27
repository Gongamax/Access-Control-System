import HAL.clrBits
import HAL.isBit
import HAL.readBits
import HAL.setBits
import isel.leic.utils.*

const val IN_BIT_4 = 0x20
const val K0_3_BITS = 0x0F
const val OUT_BIT_2 = 0x02

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.
    const val NONE = 0.toChar()
    private var lastKey = ' ' //Última tecla premida
    private val decoderArray = charArrayOf('1','4','7','*','2','5','8','0','3','6','9','#', NONE, NONE, NONE, NONE)
    // Inicia a classe
    fun init() {
        clrBits(OUT_BIT_2) //deverá ser o bit do output associado ao Kack
    }
    // Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char {
        val kVal = isBit(IN_BIT_4) //0x10
        if (kVal){
            val key = readBits(K0_3_BITS)
            setBits(OUT_BIT_2)  //Transição do ack para 1
            lastKey = decoderArray[key]

            while (isBit(IN_BIT_4)){
                Thread.sleep(10)
            }
            clrBits(OUT_BIT_2)  //Transição do ack para 0
            return lastKey
        }
        else return NONE.toChar() //Caso nenhuma tecla tenha sido premida retorna mesmo o NONE
    }

// Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou NONE caso contrário.
    fun waitKey(timeout: Long): Char {
        val startTime = Time.getTimeInMillis()
        do{
            val key = getKey()
            if (key != NONE.toChar()) return key
            val currentTime = Time.getTimeInMillis() - startTime
        }   while (currentTime < timeout)
        return NONE
    }
}

fun main(){
    KBD.init()
    while (true){
        val key = KBD.getKey()
        if (key != KBD.NONE) println("Key: $key")
        Thread.sleep(100)
    }
}