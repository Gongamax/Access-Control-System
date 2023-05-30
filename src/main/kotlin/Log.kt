class Log(private val logFileName: String = "LOG.txt") {

    fun registerAccess(user: User, dateTime: String) {
        val logEntry = "$dateTime -> ${user.uin}:${user.name}"
        FileAccess.writeFile(logFileName, logEntry)
        println("Acesso registado: $logEntry")
    }
}