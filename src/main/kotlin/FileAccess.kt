import java.io.*
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

    // Função que escreve no ficheiro, mas não apaga o conteudo anterior
    fun writeFile(fileName: String, content: String) {
        try {
            val writer = BufferedWriter(FileWriter(fileName, true))
            writer.use {
                it.append("\n")
                it.append(content)
            }
        } catch (e: IOException) {
            e.printStackTrace()
        }
    }

    //Função que escreve no ficheiro a partir do zero, sem preocupaçoes com o conteudo anterior
    fun writeFileFromZero(fileName: String, content: String) =
        File(fileName).writeText(content)
}

fun main(){
    val content = "Hello World 3!"
    FileAccess.writeFile("test.txt", content)
    //val read  = FileAccess.readTextFile("test.txt")
    //println(read)
}