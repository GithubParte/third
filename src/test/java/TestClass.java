import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class TestClass {
    @Test
    public void fakeTest(){
        int sum= 3+4;
        Assertions.assertEquals(sum, 5);
    }
}
