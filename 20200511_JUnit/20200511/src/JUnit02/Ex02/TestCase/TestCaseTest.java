package JUnit02.Ex02.TestCase;

import org.junit.Test;

import junit.framework.TestCase;

public class TestCaseTest extends TestCase{
	double f1, f2;
	
	@Override
	protected void setUp() throws Exception {
		f1 = 2.0;
		f2 = 3.0;
		super.setUp();
	}
	
	@Test
	public void testAdd() {
		System.out.println("No. of test case = " + this.countTestCases());
		System.out.println("Test Case Name = " + this.getName());
		this.setName("newTestAdd");
		System.out.println("Test Case Name = " + this.getName());
	}
}









