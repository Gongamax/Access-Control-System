import java.text.SimpleDateFormat
import java.util.*

object App {

    private const val DOOR_VELOCITY = 0x02

    fun init() {
        DoorMechanism.init()
        DoorMechanism.close(DOOR_VELOCITY)
        TUI.init()
    }

    fun use() {
        while (true) {
            TUI.clearLCD()
            val formatDate = SimpleDateFormat("dd/MM/yyyy HH:mm")
            val calendar = Calendar.getInstance()
            val currDate = formatDate.format(calendar.time)
            TUI.writeString(currDate, 0)
            lateinit var uin: String
            do {
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
            val user = authenticateUser(uin, pin)
            if (user != null) {
                afterLogin(user)
                doorProcess()
            } else {
                TUI.writeString("Login Failed", 1, center = true)
                activeWait(3000)
            }
        }
    }

    /**
     * Basic authentication method, since at the moment
     * it's only possible to log in with the hardcoded user.
     */
    private fun authenticateUser(uin: String, pin: String): User? {
        val list = Users().getAllUsers()
        return list
            .firstOrNull { user -> user.uin.padStart(3, '0') == uin && user.pin == Users().encryptPIN(pin) }
    }


    private fun afterLogin(user: User) {
        TUI.clearAndWrite("Hello", 0)
        TUI.writeString(user.name, 1, center = true)
        Thread.sleep(1000)
        if (user.message.isNotEmpty()) TUI.writeBigString(user.message, 0)
        Thread.sleep(1000)
        TUI.writeString(user.name, 0, center = true)
    }

    private fun doorProcess() {
        DoorMechanism.open(DOOR_VELOCITY)
        TUI.writeString("Door Opening", 1, center = true)
        while (!DoorMechanism.finished()) {
            Thread.sleep(1)
        }
        TUI.writeString("Door Open", 1, center = true)
        Thread.sleep(5000)
        DoorMechanism.close(DOOR_VELOCITY)
        TUI.writeString("Door Closing", 1, center = true)
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
