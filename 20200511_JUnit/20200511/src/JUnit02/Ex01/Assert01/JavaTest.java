package JUnit02.Ex01.Assert01;

import org.junit.Test;

import junit.framework.TestCase;

public class JavaTest extends TestCase{
	int num;
	String tmp, str;
	
	@Override
	protected void setUp() throws Exception {
		num = 5;
		tmp = null;
		str = "Junit is working fine";
	}
	@Test
	public void testAdd() {
		assertEquals("Junit is working fine", str);
		assertFalse(num > 6);
		assertNull(tmp);
	}
}









