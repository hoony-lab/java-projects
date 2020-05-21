package JUnit01.Ex02.Suite;

import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

public class TestJunit1 extends TestCase{
	private String msg;
	private MessageUtil msgUtil;
	//mgsUtil�� �����ڸ� �̿��Ͽ� �ʱⰪ�� �����ϰ�
	//msgUtil�� getMessage�� ���������� �����ϴ��� Ȯ��
	
	@Override
	protected void setUp() throws Exception {
		msg = "jin";
		msgUtil = new MessageUtil(msg);
	}
	@Test
	public void testGetMessage() {
		System.out.println("Test GetMessage");
		assertEquals(msg, msgUtil.getMessage());
	}

}
