import org.testng.Assert.assertEquals
import org.testng.annotations.Test

class KBDTest {

    @Test
    fun `KBD init`(){
        KBD.init()
        Thread.sleep(100)
    }

    @Test
    fun `KBD read`(){
        KBD.init()
        while (true){
            val key = KBD.getKey()
            if (key != KBD.NONE) println("Key: $key")
            //assertEquals(key, '4')
            //if (key == '4') break
            Thread.sleep(10000)
        }
    }

    @Test
    fun `KBD waitKet`(){
        KBD.init()
        while (true){
            val key = KBD.waitKey(5000)
            assertEquals(key, '4')
            if (key == '4') break
            Thread.sleep(100)
        }
    }

}