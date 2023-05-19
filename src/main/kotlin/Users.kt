import java.security.MessageDigest

data class User(val uin: String, val name: String, val pin: String)

const val MAX_USERS = 100

class Users(private val maxSize: Int = MAX_USERS) {

    private val users: HashMap<Int, User> = HashMap(maxSize)

    fun addUser(name: String, pin: String) {
        if (users.size >= MAX_USERS) {
            error("Maximum number of users reached")
        }
        val encryptedPIN = encryptPIN(pin)
        val uin = generateUIN()
        val newUser = User(uin.toString(), name, encryptedPIN)
        users.put(uin, newUser)
        println("Utilizador adicionado. UIN: $uin")
    }

    fun removeUser(uin: Int) {
        if (users.containsKey(uin)) {
            users.remove(uin)
            println("Utilizador removido. UIN: $uin")
        } else {
            println("Utilizador não encontrado. UIN: $uin")
        }
    }

    private fun generateUIN(): Int {
        val lastUin = users.keys.max()
        if (lastUin < MAX_USERS)
        return lastUin + 1 else error("No more users avaiable")
    }

    // Obter todos os utilizadores
    fun getAllUsers(): List<User> {
        return users.values.toList()
    }

    //Esta função vai ser chamada no App.kt
    private fun saveUsersToFile() {
        val content = users.values.joinToString("\n") { "${it.name}, ${it.pin}" }
        FileAccess.writeFileFromZero("USERS.txt", content)
    }

    private fun encryptPIN(pin: String): String {
        val md = MessageDigest.getInstance("SHA-256")
        val hashedBytes = md.digest(pin.toByteArray())
        return hashedBytes.joinToString("") { "%02x".format(it) }
    }
}