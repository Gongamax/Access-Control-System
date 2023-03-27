import isel.leic.UsbPort

object HAL { // Virtualiza o acesso ao sistema UsbPort

    var lastWrite : Int = 0

    // Inicia a classe
    fun init(){
        UsbPort.write(lastWrite)
    }

    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean{
        val currBits = UsbPort.read()
        //return currBits and (1 shl mask) != 0
        return currBits and mask == mask
    }

    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int{
        val currBits = UsbPort.read()
        return currBits and mask
    }

    // Escreve nos bits representados por mask o valor de value
    fun writeBits(mask: Int, value: Int){
        lastWrite =  mask and value
        UsbPort.write(lastWrite)
    }

    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int) {
        lastWrite = lastWrite or mask
        UsbPort.write(lastWrite)
    }

    // Coloca os bits representados por mask no valor lógico ‘0’
    fun clrBits(mask: Int) {
        lastWrite = lastWrite and mask.inv()
        UsbPort.write(lastWrite)
    }

}

fun main(){
    HAL.init()
    while (true){
        /*val key = HAL.isBit(0x20)
        if (key) println("Key: $key")
        Thread.sleep(100)*/

        val mask = 0x0F
        val result = HAL.readBits(mask)
        println(result)
        Thread.sleep(100)

        HAL.setBits(mask)
    }
}