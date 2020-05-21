package JUnit01.Ex02.Suite;

public class MessageUtil{
	String message;
	public MessageUtil(String message) {
		this.message = message;
	}
	
	public String getMessage() {
		return message;
	}
	public String getHiMessage() {
		return "Hi" + message;
	}
}









