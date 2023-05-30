import java.text.SimpleDateFormat
import java.util.*

object App {

    private const val DOOR_VELOCITY = 0x02
    private val USERS = Users()
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
            val user = USERS.authenticateUser(uin, pin)
            if (user != null) {
                afterLogin(user)
                doorProcess()
            } else {
                TUI.writeString("Login Failed", 1, center = true)
                activeWait(3000)
            }
        }
    }

    private fun changePin(uin: Int) {
        TUI.writeString("Change PIN?", 0, center = true)
        TUI.readResponse("Yes? press *", '*', 1)
        TUI.clearLCD()
        TUI.writeString("Insert", 0, center = true)
        val pin = TUI.writeAndReadString("new PIN:", 4, 1, encoded = true)
        TUI.writeString("Reinsert", 0, center = true)
        val rPin = TUI.writeAndReadString("new PIN:", 4, 1, encoded = true)
        TUI.clearLCD()
        if (pin == rPin) {
            USERS.changePin(uin, pin)
            TUI.writeString("PIN Changed", 0, center = true)
            activeWait(2000)
            return
        } else {
            TUI.writeBigString("PIN has been helded", 1)
            activeWait(2000)
        }
    }

    private fun afterLogin(user: User) {
        TUI.clearAndWrite("Hello", 0)
        TUI.writeString(user.name, 1, center = true)
        if (TUI.checkKeyPressed(2000, '#')) changePin(user.uin)
        //Thread.sleep(1000)
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
