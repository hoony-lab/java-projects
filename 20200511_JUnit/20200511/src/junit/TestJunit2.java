package junit;

import org.junit.BeforeClass;
import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

class TestJunit2 extends TestCase{

	private String msg;
	private MessageUtil msgUtil;
	
	
	@BeforeClass
	protected void setUp() throws Exception {
		msg = "hoony";
		msgUtil = new MessageUtil(msg);
	}

	@Test
	void test() {
		System.out.println("Test getmessgage");
		assertEquals(msg, "hoony");
	}

}
