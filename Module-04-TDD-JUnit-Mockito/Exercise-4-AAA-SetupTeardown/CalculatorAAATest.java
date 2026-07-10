import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculatorAAATest {

    private int a;
    private int b;

    // Setup method - runs before EACH test method
    // (JUnit 4 equivalent: @Before)
    @BeforeEach
    public void setUp() {
        a = 10;
        b = 5;
        System.out.println("Setup: Initializing test data (a=10, b=5)");
    }

    // Teardown method - runs after EACH test method
    // (JUnit 4 equivalent: @After)
    @AfterEach
    public void tearDown() {
        System.out.println("Teardown: Cleaning up after test");
    }

    @Test
    public void testAddition() {
        // Arrange (done in setUp already, but showing pattern explicitly)
        int expected = 15;

        // Act
        int actual = a + b;

        // Assert
        assertEquals(expected, actual);
    }

    @Test
    public void testSubtraction() {
        // Arrange
        int expected = 5;

        // Act
        int actual = a - b;

        // Assert
        assertEquals(expected, actual);
    }
}