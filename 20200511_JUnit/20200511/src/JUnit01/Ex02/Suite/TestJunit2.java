package JUnit01.Ex02.Suite;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

public class TestJunit2 extends TestCase{
	private String msg;
	private MessageUtil msgUtil;
	//mgsUtil에 생성자를 이용하여 초기값을 전달하고
	//msgUtil의 getMessage가 정상적으로 동작하는지 확인
	
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
