import java.security.MessageDigest

data class User(val uin: Int, val name: String, var pin: String, var message: String = "")

const val MAX_USERS = 1000

class Users(private val maxSize: Int = MAX_USERS) {

    private val users: HashMap<Int, User> = HashMap(maxSize)

    /**
     * Função que adiciona um utilizador
     */
    fun addUser(name: String, pin: String) {
        if (users.size >= MAX_USERS) {
            error("Maximum number of users reached")
        }
        val encryptedPIN = encryptPIN(pin)
        val uin = generateUIN()
        val newUser = User(uin, name, encryptedPIN)
        users.put(uin, newUser)
        println("Adding user $uin:$name")
    }

    /**
     * Função que remove um utilizador
     */
    fun removeUser(uin: Int) {
        val name = getAllUsers()[uin].name
        if (users.containsKey(uin)){
            users.remove(uin)
            println("User $uin:$name removed")
        }
    }


    /**
     * Função que altera o PIN
     */
    fun changePin(uin: Int, newPin: String, update: Boolean) {
        val users = getAllUsers()[uin]
        if ( update) {
            val encryptedPIN = encryptPIN(newPin)
            println(users.pin)
            users.pin = encryptedPIN
            println(users.pin)
        } else {
           getAllUsers()
        }
    }

    /**
     * Função que trata da mensagem
     */
    fun changeMessage(uin: Int, message: String) {
        val users = getAllUsers()
        if (users.any { it.uin == uin }) {
            users[uin].message = message
            if (message != "") {
                println("The message \"$message\" has been associated to $uin:${users[uin].name}")
            }
        } else {
            println("Utilizador não encontrado. UIN: $uin")
        }
    }


    /**
     * Função que gera um UIN
     */

    private fun generateUIN(): Int {
        val users = getAllUsers()
        val assignedUin = HashSet(users.map { it.uin })
        val availableUin = (0..MAX_USERS).filterNot { assignedUin.contains(it) }
        if (availableUin.isNotEmpty())
            return availableUin.first()
        else error("No more users avaiable")
    }


    /**
     * Função que obtem todos os utilizadores
     */
    fun getAllUsers(): List<User> {
        FileAccess.readTextFile("MY_USERS.txt").forEach {
            if (it.isEmpty()) return@forEach
            val (uin, pin, name, message) = it.split(";")
            val user = User(uin.toInt(), name, pin, message)
            users.put(uin.toInt(), user)
        }
        return users.values.toList()
    }

    /**
     * Função que autentica o utilizador
     */
    fun authenticateUser(uin: String, pin: String): User? {
        val list = Users().getAllUsers()
        return list
            .firstOrNull { user -> user.uin == uin.toInt() && user.pin == Users().encryptPIN(pin) }
    }

    /**
     * Função que obtem o utilizador
     *
     * Esta função vai ser chamada no App.kt
     */

    fun saveUsersToFile() {
        val content = users.values.toList()
            .joinToString("\n") { "${it.uin};${it.pin};${it.name};${it.message};" }
        FileAccess.writeFileFromZero("MY_USERS.txt", content)
    }

    /**
     * Função que encripta o PIN
     */
    fun encryptPIN(pin: String): String {
        val md = MessageDigest.getInstance("SHA-256")
        val hashedBytes = md.digest(pin.toByteArray())
        return hashedBytes.joinToString("") { "%02x".format(it) }
    }
}


fun main() {
    val users = Users()
    val user = users.addUser("Connor McGregor", "2222")
    users.saveUsersToFile()
    //val usersList = users.getAllUsers().toString()
    //println(usersList)
    // val user = users.addUser("Manuel", "1111")
    //users.saveUsersToFile()
    val usersList = users.getAllUsers().toString()
    val a = users.getAllUsers()
    println(a.get(0).name)
    println(usersList)
}