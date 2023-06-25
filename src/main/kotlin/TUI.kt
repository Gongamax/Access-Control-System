import kotlin.math.abs

object TUI {

    private const val LCD_LENGTH = 16

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
                if (key == '*') {
                    reset(`?`, line, col + msg.length)
                    string = ""
                } else if (key == '#') Thread.sleep(1)
                else {
                    string += key
                    if (encoded) LCD.write('*')
                    else LCD.write(key)
                }
            } else return KBD.NONE.toString()
        } while (string.length < nameLength)

        return string
    }

    fun readResponse(msg: String, key: Char, line: Int, col: Int = 0): Boolean {
        writeString(msg, line, col, center = true)
        val readKey = KBD.waitKey(3000)
        return readKey == key
    }

    private fun reset(msg: String, line: Int, col: Int) {
        LCD.cursor(line, col)
        LCD.write(msg)
        LCD.cursor(line, col)
    }

    fun clearAndWrite(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        writeString(msg, line, center = true)
    }

    fun writeBigString(msg: String, line: Int, col: Int = 0, center: Boolean = false) {
        LCD.clear()
        val words = msg.split(" ")
        var length = 0
        val firstLine = words.takeWhile { length += it.length + 1; length <= LCD_LENGTH }
        val secondLine = words - firstLine
        writeString(firstLine.joinToString(" "), line, col, center = center)
        if (secondLine.isNotEmpty()) {
            require(line < 1) { "Second line is too long!" }
            writeString(secondLine.joinToString(" "), line + 1, center = center)
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

    fun checkKeyPressed(timeout: Long, key: Char) = KBD.waitKey(timeout) == key

    private fun writeStringAux(msg: String, line: Int, col: Int = 0) {
        if (msg.length > LCD_LENGTH) throw IllegalArgumentException("String too long!")
        LCD.cursor(line, col)
        LCD.write(msg)
        clearCursor(col + msg.length)
    }

    private fun clearCursor(col: Int = 0) = LCD.write(" ".repeat(abs(LCD_LENGTH - col)))
}

fun main() {
    TUI.init()
//    TUI.writeAndReadString("PIN:", 4, 1, encoded = true)
//    TUI.clearAndWrite("Hello", 0)
//    TUI.writeString("Hello", 1, center = true)

    TUI.writeBigString("PIN has been held", 0, center = true)
}

