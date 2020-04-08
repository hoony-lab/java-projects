package java07.AccessController;

public class ArithmeticEx01 implements IArithmetic {
	int result;

	@Override
	public void NoExceptionCase() {
		for (int i = 0; i < 10; i++) {
			try {
				result = NUM/ (int)(Math.random()*10);
			} catch (ArithmeticException e) {
				result = 0;
				e.printStackTrace();
			} catch(Exception e) {
				e.printStackTrace();
			}
			finally {
				System.out.println(result);

			}
		}
	}
}
