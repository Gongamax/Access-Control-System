import java.lang.System.currentTimeMillis
import java.sql.Time
import java.time.Instant
import kotlin.time.Duration.Companion.nanoseconds

object TUI {

    private const val LCD_LENGTH = 16
    fun init() {
        LCD.init()
        KBD.init()
    }

    fun writeAndReadString(msg: String, nameLength: Int, line: Int, col: Int = 0, encoded: Boolean = false): String {
        LCD.cursor(line, col)
        LCD.write(msg)
        var string = ""
        val `?` = "?".repeat(nameLength)
        LCD.write(`?`)
        LCD.cursor(line, col + msg.length)
        do {
            val key = KBD.getKey()
            if (key != KBD.NONE) {
                string += key
                if (key == '*') writeAndReadString(msg, nameLength, line, col)
                else {
                    if (encoded) LCD.write('*')
                    else LCD.write(key)
                }
            }
        } while (string.length < nameLength && string != `?`)

        return string
    }

    fun clearAndWrite(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        writeString(msg, line, center = true)
    }

    private fun writeStringAux(msg: String, line: Int, col: Int = 0) {
        if (msg.length > LCD_LENGTH) throw IllegalArgumentException("String too long!")
        LCD.cursor(line, col)
        LCD.write(msg)
    }

    fun writeBigString(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        val firstLine = msg.substring(0, minOf(msg.length, LCD_LENGTH - col))
        val secondLine = msg.substring(maxOf(0, LCD_LENGTH - col))
        writeStringAux(firstLine, line, col)
        if (secondLine.isNotEmpty()) {
            require(line < 1) { "Second line is too long!" }
            LCD.cursor(line + 1, 0)
            LCD.write(secondLine)
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
}


/**
 *     fun readInt(msg: String, numberLength: Int, encoded: Boolean = false): Int {
 *         while (true) {
 *             LCD.write(msg)
 *             var number: String = ""
 *             do {
 *                 val key = KBD.waitKey(5000)
 *                 if (key != KBD.NONE) {
 *                     number += key
 *                     if (key == '*') readInt(msg, numberLength)
 *                     else {
 *                         if (encoded) LCD.write('*')
 *                         else LCD.write(key)
 *                     }
 *                 }
 *             } while (number.length < numberLength)
 *             LCD.write(number)
 *             try {
 *                 return number.toInt()
 *             } catch (e: NumberFormatException) {
 *                 e.message?.let { LCD.write(it) }
 *             }
 *             LCD.write("Invalid value! Try again.")
 *         }
 *     }
 */