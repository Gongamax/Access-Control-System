object TUI {

    const val LCD_LENGHT = 16
    fun init() {
        LCD.init()
        KBD.init()
        DoorMechanism.init()
    }

    fun readInt(msg: String, numberLenght: Int): Int {
        while (true) {
            LCD.write(msg)
            var number: String = ""
            do {
                number += KBD.getKey()
                if (number.contains('*')) number = ""
            } while (KBD.getKey() != KBD.NONE && number.length < numberLenght)
            LCD.write(number)
            try {
                return number.toInt()
            } catch (e: NumberFormatException) {
                e.message?.let { LCD.write(it) }
            }
            LCD.write("Invalid value! Try again.")
        }
    }

    fun readString(msg: String, nameLenght: Int, line: Int, col: Int = 0): String {
        LCD.cursor(line, col)
        LCD.write(msg)
        var string = ""
        val `?` = "?".repeat(nameLenght)
        LCD.write(`?`)
        LCD.cursor(line, col + msg.length)
        do {
            val key = KBD.getKey()
            if (key != KBD.NONE) {
                string += key
                if (key == '*') readString(msg, nameLenght, line, col)
                else LCD.write(key)
            }
        } while (string.length < nameLenght && string != `?`)

        return string
    }

    fun writePin(msg: String, nameLenght: Int, line: Int, col: Int = 0): String {
        LCD.cursor(line, col)
        LCD.write(msg)
        var string = ""
        val `?` = "?".repeat(nameLenght)
        LCD.write(`?`)
        LCD.cursor(line, col + msg.length)
        do {
            val key = KBD.getKey()
            if (key != KBD.NONE) {
                string += key
                if (key == '*') readString(msg, nameLenght, line, col)
                else LCD.write('*')
            }
        } while (string.length < nameLenght && string != `?`)

        return string
    }

    fun clearAndWrite(msg: String, line: Int, col: Int = 0) {
        LCD.clear()
        writeStringCenter(msg, line)
    }

    fun writeString(msg: String, line: Int, col: Int = 0) {
        LCD.cursor(line, col)
        LCD.write(msg)
    }

    fun writeStringCenter(msg: String, line: Int) {
        val emptyLine = " ".repeat(LCD_LENGHT)
        val col = (LCD_LENGHT - msg.length) / 2
        writeString(emptyLine, line, 0)
        LCD.cursor(line, col)
        LCD.write(msg + emptyLine)
    }
}