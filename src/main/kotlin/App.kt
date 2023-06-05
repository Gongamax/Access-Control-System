import java.text.SimpleDateFormat
import java.util.*
import kotlin.system.exitProcess

object App {

    private const val DOOR_VELOCITY = 0x01
    private val USERS = Users()
    private val LOG = Log()

    private enum class Manut { NEW, DEL, MSG, OFF }

    fun init() {
        DoorMechanism.init()
        DoorMechanism.close(DOOR_VELOCITY)
        TUI.init()
        TUI.writeString("Initializing..", 0, center = true)
        TUI.writeString("Wait Please...", 1, center = true)
        USERS.getAllUsers()
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
    }

    fun use() {
        while (true) {
            TUI.clearLCD()
            Maintenance.init()
            val formatDate = SimpleDateFormat("dd/MM/yyyy HH:mm")
            val calendar = Calendar.getInstance()
            val currDate = formatDate.format(calendar.time)
            TUI.writeString(currDate, 0)
            lateinit var uin: String
            do {
                if (Maintenance.isMaintenance()) {
                    modeMaintenance()
                }
                uin = TUI.writeAndReadString("UIN:", 3, 1)
            } while (uin == KBD.NONE.toString())
            activeWait(500)
            val pin = TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
            if (pin == KBD.NONE.toString()) {
                TUI.writeString("Login Failed", 1, center = true)
                activeWait(3000)
                use()
            }
            Thread.sleep(500)
            val user = USERS.authenticateUser(uin, pin)
            if (user != null) {
                LOG.registerAccess(user, currDate)
                afterLogin(user)
                doorProcess()
            } else {
                TUI.writeString("Login Failed", 1, center = true)
                activeWait(3000)
            }
        }
    }

    private fun modeMaintenance() {
        TUI.writeString("Out of Service", 0, center = true)
        TUI.writeString("Wait", 1, center = true)
        println("Turn M key to off, to terminate the maintenance mode.")
        println("Commands: ${Manut.values().joinToString { "$it" }}.")
        do {
            print("Maintenance> ")
            val command = readln().uppercase().trim()
            if (!(Manut.values().toList().any { it.name == command }))
                println("Invalid command.")
            else {
                when (Manut.valueOf(command)) {
                    Manut.NEW -> newManutMode()
                    Manut.DEL -> delManutMode()
                    Manut.MSG -> msgManutMode()
                    Manut.OFF -> offManutMode()
                }
            }
        } while (command != Manut.OFF.toString() && Maintenance.isMaintenance())
        Thread.sleep(500)
        println("Exiting maintenance mode...")
        use()
    }

    private fun newManutMode() {
        while (true) {
            print("User name? ")
            val name = readln().trim()
            if (name.length > 16) {
                println("The $name has more than 16 chars.")
                break
            } else if (name.isEmpty()) {
                println("Aborted command.")
                break
            }
            print("PIN? ")
            val pin = readln().trim()
            if (pin.length > 4) {
                println("The length pf $pin is only of 4 digits.")
                break
            } else if (pin.isEmpty()) {
                println("Aborted command.")
                break
            }
            USERS.addUser(name, pin)
            return
        }
    }

    private fun delManutMode() {
        while (true) {
            print("UIN? ")
            val uin = readln().trim()
            if (uin.length != 3 || !(USERS.verificationUni(uin))) {
                println("Invalid UIN.")
                break
            }
            val name = USERS.nameUser(uin)
            println("Remove user $uin:$name")
            print("Y/N? ")
            val answer = readln().uppercase().trim()
            if (answer != "Y") {
                println("Command aborted.")
                break
            }
            USERS.removeUser(uin.toInt())
            return
        }

    }

    private fun offManutMode() {
        TUI.writeString("Shutdown...", 1, center = true)
        Thread.sleep(3000)
        USERS.saveUsersToFile()
        exitProcess(0)
    }

    private fun msgManutMode() {
        while (true) {
            print("UIN? ")
            val uin = readln().trim()
            if (uin.length != 3 || !(USERS.verificationUni(uin))) {
                println("Invalid UIN.")
                break
            }
            val message = USERS.messageUser(uin)
            if (message != "") {
                println("User has this message: $message")
                print("Remove this message Y/N? ")
                val confirm = readln().uppercase().trim()
                if (confirm != "Y") {
                    println("Command aborted.")
                    break
                }
                print("Message? ")
                val m = readln()
                USERS.changeMessage(uin.toInt(), m)
                break
            } else {
                print("Message? ")
                val m = readln()
                USERS.changeMessage(uin.toInt(), m)
                break
            }
        }
    }


    private fun changePin(uin: Int) {
        TUI.writeString("Change PIN?", 0, center = true)
        val toChange = TUI.readResponse("(Yes=*)", '*', 1)
        if (!toChange) return
        TUI.clearLCD()
        TUI.writeString("Insert New", 0, center = true)
        val pin = TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
        TUI.writeString("Re-insert New", 0, center = true)
        val rPin = TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
        TUI.clearLCD()
        if (pin == rPin && pin != KBD.NONE.toString()) {
            USERS.changePin(uin, pin)
            TUI.writeBigString("PIN has been changed", 0, center =true)
            activeWait(2000)
            return
        } else {
            TUI.writeBigString("PIN has been helded", 0, center =true)
            activeWait(2000)
        }
    }

    private fun delMessage(uin: Int) {
        TUI.writeString("Clear Msg.?", 0, center = true)
        val delete = TUI.readResponse("(Yes=*)", '*', 1)
        val msg = USERS.messageUser(uin.toString())
        return if (delete && msg != "") {
            USERS.changeMessage(uin, "")
            TUI.clearLCD()
            TUI.writeBigString("Msg. has been cleared", 0, center = true)
        } else {
            TUI.writeBigString("Msg. has been helded", 0, center = true)
            activeWait(2000)
        }
    }

    private fun afterLogin(user: User) {
        TUI.clearAndWrite("Hello", 0)
        TUI.writeString(user.name, 1, center = true)
        if (TUI.checkKeyPressed(2000, '#')) changePin(user.uin)
        if (TUI.checkKeyPressed(2000, '*')) delMessage(user.uin)
        if (user.message.isNotEmpty()) TUI.writeBigString(user.message, 0)
        Thread.sleep(1000)
        TUI.writeString(user.name, 0, center = true)
    }

    private fun doorProcess() {
        DoorMechanism.open(DOOR_VELOCITY)
        TUI.writeString("Door Opening...", 1, center = true)
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
        TUI.writeString("Door Open", 1, center = true)
        Thread.sleep(5000)
        DoorMechanism.close(DOOR_VELOCITY)
        TUI.writeString("Door Closing...", 1, center = true)
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
        TUI.writeString("Door Closed", 1, center = true)
        activeWait(2000)
    }

    private fun activeWait(timeoutMillis: Long) {
        val startTime = System.currentTimeMillis()
        while (System.currentTimeMillis() - startTime < timeoutMillis) {
            if (TUI.keyPressed()) {
                return
            }
        }
    }

}

fun main() {
    App.init()
    App.use()
}
