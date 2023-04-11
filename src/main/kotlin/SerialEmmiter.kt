import HAL
import HAL.clrBits
import HAL.setBits
import HAL.writeBits

//Os valores nas constantes não estão corretos, são apenas para testar
const val ACCEPT_ADDR = 0x01
const val SDCLK = 0x02
const val DATA = 0x04
const val nSS = 0x08
const val SERIAL_ADDR = 0x10
const val DOOR_ADDR = 0x20

// Envia tramas para os diferentes módulos Serial Receiver.
object SerialEmmiter {
    enum class Destination {LCD, DOOR}
    // Inicia a classe
    fun init() {
        HAL.init() // Iniciar a classe HAL
        HAL.clrBits(nSS)// ATIVAR O SS A 1 (active low)
        clrBits(SDCLK) // ATIVAR O CLK
        clrBits(DATA)  // ATIVAR O DATA

    }
    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em ‘data’.
    fun send(addr: Destination, data: Int) {
        if (addr == Destination.LCD) HAL.clrBits(SERIAL_ADDR) else HAL.clrBits(DOOR_ADDR) // Alterar o sinal LCDsel
        repeat(5) {//Iterar 5 vezes sobre os bits de data
            val bit = data and (1 shl it) // Obter o bit de data
            if (bit != 0) setBits(bit) else HAL.clrBits(bit) // Escrever o bit de data
            setBits(SDCLK) // ATIVAR O CLK
            Thread.sleep(1000)
            HAL.clrBits(SDCLK) // DESATIVAR O CLK
            Thread.sleep(1000)
        }
    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean = !HAL.isBit(ACCEPT_ADDR) // Se o accept for 0 então está ocupado
}