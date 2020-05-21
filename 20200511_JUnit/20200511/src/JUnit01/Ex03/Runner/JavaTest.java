package JUnit01.Ex03.Runner;

import org.junit.Test;

import junit.framework.TestCase;

public class JavaTest extends TestCase{
	protected int n1, n2;
	
	@Override
	protected void setUp() throws Exception {
		n1 = 2;
		n2 = 3;
		super.setUp();
	}
	@Test
	private void testAdd() {
		assertTrue(5 == n1 + n2);
		assertTrue(3 == n1 + n2);
	}
}









