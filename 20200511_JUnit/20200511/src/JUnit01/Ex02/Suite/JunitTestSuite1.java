package JUnit01.Ex02.Suite;

import junit.framework.Test;
import junit.framework.TestSuite;

public class JunitTestSuite1 {
	public static Test suite() {
		TestSuite suite = new TestSuite();
		
		suite.addTestSuite(TestJunit1.class);
		suite.addTestSuite(TestJunit2.class);
		
		return suite;
	}
}
