package JUnit01.Ex02.Suite;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

public class TestJunit2 extends TestCase{
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
	public void testGetHiMessage() {
		System.out.println("Test GetMessage");
		assertEquals(msg, msgUtil.getHiMessage());
	}

}
