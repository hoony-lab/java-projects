package JUnit01.Ex02.Suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({
	TestJunit1.class, TestJunit2.class
})

public class JunitTestSuite2 {

}
