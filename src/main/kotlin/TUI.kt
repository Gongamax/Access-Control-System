
object TUI {

    fun readInt(msg: String, numberLenght: Int): Int {
        while (true) {
            LCD.write(msg)
            var number : String = ""
            do {
                 number += KBD.getKey()
                if (number.contains('*')) number = ""
                LCD.write(number)
            } while (KBD.getKey() != KBD.NONE && number.length <= numberLenght)
            try {
                return number.toInt()
            } catch (e: NumberFormatException) {
                e.message?.let { LCD.write(it) }
            }
            LCD.write("Invalid value! Try again.")
        }
    }

    fun readString(msg: String, nameLenght: Int): String {
        LCD.write(msg)
        var string = ""
        do {
            string += KBD.getKey()
            if (string.contains('*')) string = ""
            LCD.write(string)
        } while (KBD.getKey() != KBD.NONE && string.length <= nameLenght)
        return string
    }


}