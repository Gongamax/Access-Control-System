
class Log(private val logFileName : String = "LOG.txt") {

    fun registerAccess(uin : String, dateTime : String){
        val logEntry = "$dateTime - UIN: $uin"
        FileAccess.writeFile(logFileName, logEntry)
        println("Acesso registado: $logEntry")
    }
}