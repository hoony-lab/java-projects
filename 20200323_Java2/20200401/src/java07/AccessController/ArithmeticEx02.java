package java07.AccessController;

public class ArithmeticEx02 implements IArithmetic {
	int result;
	
	public void NoExceptionCase() {
		for (int i = 0; i < 10; i++) {
			try {
				result = NUM/ (int)(Math.random()*10);
			} catch (ArithmeticException e) {
				result = 0;
				System.out.println(e);
			} catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				System.out.println(result);
				
			}
		}
	}
}
