import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class JunitTest {
	//@Test��� ������̼��� ���� �޼ҵ带 �׽�Ʈ�ϰڴٴ� �ǹ���.
	@Test
	void test() {
		String str = "Hello JUnit";
		
		assertEquals("Hello ", str);
	}

}
