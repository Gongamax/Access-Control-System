
import java.security.MessageDigest

data class User(val uin: String, val name: String, var pin: String)

const val MAX_USERS = 100

class Users(private val maxSize : Int =MAX_USERS) {

    private val users : HashMap<String,User> =  HashMap(maxSize)

    fun addUser(name : String, pin : String){
        if (users.size >= MAX_USERS) {
            error("Maximum number of users reached")
        }
        val encryptedPIN = encryptPIN(pin)
        val uin = generateUIN()
        val newUser = User(uin, name, encryptedPIN)
        users.put(uin, newUser)
        saveUsersToFile()
        println("Utilizador adicionado. UIN: $uin")
    }

    fun removeUser(uin: String){
        if (users.containsKey(uin)) {
            users.remove(uin)
            saveUsersToFile()
            println("Utilizador removido. UIN: $uin")
        } else {
            println("Utilizador não encontrado. UIN: $uin")
        }
    }

    private fun generateUIN() : String{
        val currentUINs = users.values.map { it.uin }
        do{
            val uin = (1..MAX_USERS).random().toString()
            if (!currentUINs.contains(uin)) {
                return uin
            }
        } while (true)
    }

    // Obter todos os utilizadores
    fun getAllUsers(): List<User> {
        return users.values.toList()
    }

    private fun saveUsersToFile() {
        val content = users.values.joinToString("\n") { "${it.name}, ${it.pin}" }
        FileAccess.writeFile("USERS.txt", content)
    }
    private fun encryptPIN(pin: String): String {
        val md = MessageDigest.getInstance("SHA-256")
        val hashedBytes = md.digest(pin.toByteArray())
        return hashedBytes.joinToString("") { "%02x".format(it) }
    }

}