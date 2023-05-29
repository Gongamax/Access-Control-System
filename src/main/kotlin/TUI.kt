import kotlin.math.abs

object TUI {

    private const val LCD_LENGTH = 16
    const val TIMEOUT = "TIMEOUT"
    fun init() {
        LCD.init()
        KBD.init()
    }

    fun writeAndReadString(
        msg: String,
        nameLength: Int,
        line: Int,
        col: Int = 0,
        encoded: Boolean = false,
    ): String {
        LCD.cursor(line, col)
        LCD.write(msg)
        var string = ""
        val `?` = "?".repeat(nameLength)
        LCD.write(`?`)
        LCD.cursor(line, col + msg.length)
        do {
            val key = KBD.waitKey(5000)
            if (key != KBD.NONE) {
                string += key
                if (key == '*') writeAndReadString(msg, nameLength, line, col)
                else {
                    if (encoded) LCD.write('*')
                    else LCD.write(key)
                }
            } else return KBD.NONE.toString()
        } while (string.length < nameLength && string != `?`)

        return string
    }

    fun clearAndWrite(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        writeString(msg, line, center = true)
    }

    fun writeBigString(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        val firstLine = msg.substring(0, minOf(msg.length, LCD_LENGTH - col))
        val secondLine = msg.substring(maxOf(0, LCD_LENGTH - col))
        writeStringAux(firstLine, line, col)
        if (secondLine.isNotEmpty()) {
            require(line < 1) { "Second line is too long!" }
            writeStringAux(secondLine, line + 1)
        }
    }

    fun writeString(msg: String, line: Int, col: Int = 0, center: Boolean = false) {
        if (center) {
            val emptyLine = " ".repeat(LCD_LENGTH)
            val column = (LCD_LENGTH - msg.length) / 2
            writeStringAux(emptyLine, line, 0)
            writeStringAux(msg, line, column)
        } else {
            writeStringAux(msg, line, col)
        }
    }

    fun clearLCD() = LCD.clear()

    fun keyPressed() = KBD.getKey() != KBD.NONE

    private fun writeStringAux(msg: String, line: Int, col: Int = 0) {
        if (msg.length > LCD_LENGTH) throw IllegalArgumentException("String too long!")
        LCD.cursor(line, col)
        LCD.write(msg)
        clearCursor(col + msg.length)
    }

    private fun clearCursor(col: Int = 0) = LCD.write(" ".repeat(abs(LCD_LENGTH - col)))
}

fun main(){
    TUI.init()
    TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
    TUI.clearAndWrite("Hello", 0)
    TUI.writeString("Hello", 1, center = true)
}

