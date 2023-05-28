import java.text.SimpleDateFormat
import java.util.*

object App {

    private val HARDCODED_USER = User("000", "John Johnson", "1234", "Johnson machine is ready")
    private val DOOR_VELOCITY = 0x02

    fun init() {
        TUI.init()
        DoorMechanism.init()
    }

    fun use() {
        val formatDate = SimpleDateFormat("dd/MM/yyyy HH:mm")
        val calendar = Calendar.getInstance()
        val currDate = formatDate.format(calendar.time)
        TUI.writeString(currDate, 0)
        val uin = TUI.writeAndReadString("UIN:", 3, 1)
        Thread.sleep(500)
        val pin = TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
        Thread.sleep(500)
        if (authenticateUser(uin, pin)) {
            afterLogin()
            doorProcess()
        } else {
            TUI.writeString("Login Failed", 1, center = true)
            Thread.sleep(3000)
        }
    }

    /**
     * Basic authentication method, since at the moment
     * it's only possible to log in with the hardcoded user.
     */
    private fun authenticateUser(uin: String, pin: String): Boolean {
        return uin == HARDCODED_USER.uin && pin == HARDCODED_USER.pin
    }

    private fun afterLogin() {
        TUI.clearAndWrite("Hello", 0)
        TUI.writeString(HARDCODED_USER.name, 1, center = true)
        Thread.sleep(1000)
        TUI.writeBigString(HARDCODED_USER.message, 0)
        Thread.sleep(1000)
        TUI.writeString(HARDCODED_USER.name, 0, center = true)
    }

    private fun doorProcess() {
        DoorMechanism.open(DOOR_VELOCITY)
        TUI.writeString("Door Opening", 1, center = true)
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
        TUI.writeString("Door Open", 1, center = true)
        DoorMechanism.close(DOOR_VELOCITY)
        TUI.writeString("Door Closing", 1)
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
        TUI.writeString("Door Closed", 1, center = true)
    }
}

fun main() {
    App.init()
    while (true) {
        App.use()
        TUI.clearAndWrite("", 1)
    }
}
