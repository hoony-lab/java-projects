package junit;

import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

class TestJunit1 extends TestCase{

	private String msg;
	private MessageUtil msgUtil;
	
	
	@Override
	protected void setUp() throws Exception {
		msg = "hoony";
		msgUtil = new MessageUtil(msg);
	}

	@Test
	void test() {
		System.out.println("Test getmessgage");
		System.out.println(msg);
		System.out.println(msgUtil.getMsg());
		assertEquals(msg, msgUtil.getMsg());
	}

}
