import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class JunitTest {
	//@Test라는 어노테이션이 붙은 메소드를 테스트하겠다는 의미임.
	@Test
	void test() {
		String str = "Hello JUnit";
		
		assertEquals("Hello ", str);
	}

}
