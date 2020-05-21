package junit;



import org.junit.jupiter.api.Test;

import junit.framework.TestCase;

class JavaTest extends TestCase{
	protected int n1, n2;
	
	@Override
	protected void setUp() throws Exception {
		// TODO Auto-generated method stub
		n1 = 1;
		n2 = 2;
		super.setUp();
	}

	@Test
	private void testAdd() {
		assertTrue(n1 + n2 == 5);
		assertTrue(n1 + n2 == 5);
	}
}
