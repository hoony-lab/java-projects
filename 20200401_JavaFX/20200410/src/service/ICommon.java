package service;

public interface ICommon {
	public String encryptSHA512(String data);
	public void MsgBox(String contents);
	public void showAlert(String title, String headerText, String contentText);
}
