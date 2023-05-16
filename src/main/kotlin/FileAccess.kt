import java.io.BufferedReader
import java.io.File
import java.lang.StringBuilder

object FileAccess {

    fun readTextFile(fileName: String): String {
        val output = StringBuilder()
        val reader = BufferedReader(File(fileName).reader())
        reader.use {
            var line = reader.readLine()
            while (line != null) {
                output.append(line)
                line = reader.readLine()
            }
        }
        return output.toString()
    }

    fun writeFile(fileName: String, content: String) {
        File(fileName).writeText(content)
    }
}

fun main(){
    val content = "Hello World!"
   // FileAccess.writeFile("test.txt", content)
    val read  = FileAccess.readTextFile("test.txt")
    println(read)
}