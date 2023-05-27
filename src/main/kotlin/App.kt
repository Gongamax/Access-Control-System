import java.text.SimpleDateFormat
import java.util.*

object App {

    private val HARDCODED_USER = User("000", "John Johnson", "1234", "Johnson machine is ready")
    private fun authenticateUser(uin: String, pin: String): Boolean {
        return uin == HARDCODED_USER.uin && pin == HARDCODED_USER.pin
    }

    fun use(){
        val date = SimpleDateFormat("dd/MM/yyyy HH:MM")
        val calendar = Calendar.getInstance()
        val currDate = date.format(calendar.time)
        TUI.writeString(currDate, 0)
        val uin = TUI.readString("UIN:", 3, 1)
        Thread.sleep(1000)
        val pin = TUI.writePin("PIN:", 4, 1)
        Thread.sleep(2000)
        if (authenticateUser(uin,pin)) {
            TUI.clearAndWrite("Hello", 0)
            TUI.writeStringCenter(HARDCODED_USER.name, 1)
            Thread.sleep(1000)
            TUI.writeStringCenter("Johnson machine", 0)
            TUI.writeStringCenter("is ready", 1)
            Thread.sleep(1000)
            TUI.writeStringCenter(HARDCODED_USER.name, 0)
            DoorMechanism.open(0x02)
        } else {
            TUI.writeStringCenter("Login Failed", 1)
        }
        Thread.sleep(3000)
    }
}



fun main(){
    TUI.init()
    App.use()
}
/**
 * HELLO
 * TURNING MACHING IS READY
 *
 * NOME
 * DOOR OPENING
 * DOOR CLOSING
 */