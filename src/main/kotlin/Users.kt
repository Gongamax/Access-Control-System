import java.security.MessageDigest

data class User(val uin: String, val name: String, val pin: String, val message : String = "")

const val MAX_USERS = 100

class Users(private val maxSize: Int = MAX_USERS) {

    private val users: HashMap<String, User> = HashMap(maxSize)

    fun addUser(name: String, pin: String) {
        if (users.size >= MAX_USERS) {
            error("Maximum number of users reached")
        }
        val encryptedPIN = encryptPIN(pin)
        val uin = generateUIN().toString().padStart(3, '0')
        val newUser = User(uin, name, encryptedPIN)
        println(newUser)
        users.put(uin, newUser)
        println("Utilizador adicionado. UIN: $uin")
    }

    fun removeUser(uin: String) {
        if (users.containsKey(uin)) {
            users.remove(uin)
            println("Utilizador removido. UIN: $uin")
        } else {
            println("Utilizador não encontrado. UIN: $uin")
        }
    }

    private fun generateUIN(): Int {
        val lastUin = if (users.size > 0) users.keys.max().toInt() else -1
        if (lastUin < MAX_USERS)
            return lastUin + 1 else error("No more users avaiable")
    }

    // Obter todos os utilizadores
    fun getAllUsers(): List<User> {
        FileAccess.readTextFile("USERS.txt").forEach {
            if (it.isEmpty()) return@forEach
            val (uin, pin, name, message) = it.split(";")
            val user = User(uin, name, pin, message)
            users.put(uin, user)
        }
        return users.values.toList()
    }

    //Esta função vai ser chamada no App.kt
    fun saveUsersToFile() {
        val content = getAllUsers()
            .joinToString("\n") { "${it.uin};${it.pin};${it.name};${it.message};" }
        FileAccess.writeFileFromZero("USERS.txt", content)
    }

    fun encryptPIN(pin: String): String {
        val md = MessageDigest.getInstance("SHA-256")
        val hashedBytes = md.digest(pin.toByteArray())
        return hashedBytes.joinToString("") { "%02x".format(it) }
    }
}


fun main() {
    val users = Users()
    val user = users.addUser("John Jones", "1234")

//    Users().saveUsersToFile()
    //val usersList = users.getAllUsers().toString()
    //println(usersList)
}