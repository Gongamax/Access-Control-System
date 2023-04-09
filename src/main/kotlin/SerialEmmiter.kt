import HAL
import HAL.setBits
import HAL.writeBits

//Os valores nas constantes não estão corretos, são apenas para testar
const val ACCEPT_ADDR = 0x01
const val SDXCLK = 0x02
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
        setBits(SDXCLK) // ATIVAR O CLK
        setBits(DATA)  // ATIVAR O DATA

    }
    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em ‘data’.
    fun send(addr: Destination, data: Int) {
        if (addr == Destination.LCD) HAL.clrBits(SERIAL_ADDR) else HAL.clrBits(DOOR_ADDR)
        repeat(5) {
            if ((data and (1 shl it)) != 0) setBits(DATA) else HAL.clrBits(DATA)
            setBits(SDXCLK)
            Thread.sleep(1000)
            HAL.clrBits(SDXCLK)
            Thread.sleep(1000)
        }
    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean = !HAL.isBit(ACCEPT_ADDR) // Se o accept for 0 então está ocupado
}