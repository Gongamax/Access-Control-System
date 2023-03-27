import org.testng.Assert.assertEquals
import org.testng.Assert.assertTrue
import org.testng.annotations.Test

class HALTEST {

    @Test
    fun `Test isBit`(){
        HAL.init()
        while (true){
            val key = HAL.isBit(0x20)
            if (key) break//println("Key: $key")
            Thread.sleep(100)
            assertTrue(key)
        }
    }

    @Test
    fun `Test readBits`(){
        HAL.init()
        while (true){
            val mask = 0x0F
            val result = HAL.readBits(mask)
            Thread.sleep(100)
            if (result == mask) break
            assertEquals(result, mask)
        }
    }

    @Test
    fun `Test writeBits`(){
        HAL.init()
        while (true){
            val mask = 0x0F
            val value = 0x0F
            HAL.writeBits(mask, value)
            val result = value and mask
            if (result == HAL.lastWrite) break
            assertEquals(HAL.lastWrite, result)
            Thread.sleep(100)
        }
    }

    @Test
    fun `Test setBits`(){
        HAL.init()
        while (true){
            val mask = 0x0F
            HAL.setBits(mask)
            if (HAL.lastWrite == mask) break
            assertEquals(HAL.lastWrite, mask)
            Thread.sleep(100)
        }
    }

    @Test
    fun `Test clrBits`(){
        HAL.init()
        while (true){
            val mask = 0x0F
            HAL.clrBits(mask)
            Thread.sleep(100)
            if (HAL.lastWrite == 0) break
            assertEquals(HAL.lastWrite, mask)
        }
    }
}