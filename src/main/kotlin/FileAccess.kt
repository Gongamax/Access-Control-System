import java.io.*

object FileAccess {

    fun readTextFile(fileName: String): ArrayList<String> {
        //val output = StringBuilder()
        val ret : ArrayList<String> = ArrayList()
        try {
            val reader = BufferedReader(File(fileName).reader())
            reader.use {
                var line = reader.readLine()
                while (line != null) {
                    //output.append(line)
                    ret.add(line)
                    line = reader.readLine()
                }
            }
        } catch (e:Exception) {
            println("Error opening file $fileName")
            try {
                val file = File(fileName);
                if (file.createNewFile()) {
                    val userFile = FileOutputStream(file)
                    userFile.close()
                    println("$fileName file was created, please restart needed")
                    println("Tip: insert users and corresponding information")
                } else println("Please check $fileName file")
            } catch (e: Exception) {
                println("Error creating $fileName")
            }
        }
        return ret
    }

    // Função que escreve no ficheiro, mas não apaga o conteudo anterior
    fun writeFile(fileName: String, content: String) {
        try {
            val writer = BufferedWriter(FileWriter(fileName, true))
            writer.use {
                it.append(content)
                it.append("\n")
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
   // val content = "Hello World 5!"
    //FileAccess.writeFile("test.txt", content)
    val read  = FileAccess.readTextFile("test.txt")
    println(read)
}