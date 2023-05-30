import HAL.clrBits

const val M = 0x40

object Maintenance {
    fun init() {
        HAL.init() // Iniciar a classe HAL
        clrBits(M) // ATIVAR O M
    }
    fun isMaintenance() = HAL.isBit(M)

}

fun main(){
    Maintenance.init()
    while (true){
        val maintenance = Maintenance.isMaintenance()
         println("Maintenance: $maintenance")
        Thread.sleep(3000)
    }
}