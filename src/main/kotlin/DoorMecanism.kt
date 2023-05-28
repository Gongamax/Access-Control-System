import SerialEmmiter.Destination.*
import SerialEmmiter.isBusy

object DoorMechanism { // Controla o estado do mecanismo de abertura da porta.
    // Inicia a classe, estabelecendo os valores iniciais.
    fun init() {
        SerialEmmiter.init()
    }

    // Envia comando para abrir a porta, com o parâmetro de velocidade
    fun open(velocity: Int) =
        SerialEmmiter.send(DOOR, (velocity shl 1) or 0x01)

    // Envia comando para fechar a porta, com o parâmetro de velocidade
    fun close(velocity: Int) =
        SerialEmmiter.send(DOOR, (velocity shl 1))

    // Verifica se o comando anterior está concluído
    fun finished(): Boolean = !isBusy()
}

fun main() {
    DoorMechanism.init()
    DoorMechanism.close(0x02)
    DoorMechanism.open(0x02)
    while (!DoorMechanism.finished()) {
        Thread.sleep(1)
    }
}