package javaBean.test;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

//���� gmail ������ ���� Class
public class MyAuthentication extends Authenticator {

	PasswordAuthentication pa;

	public MyAuthentication() { // �����ڸ� ���� ���� ID/PW ����

		String id = "jihun9839"; // ���� ID
		String pw = "??????????????????????????????????"; // ���� ��й�ȣ

		// ID�� ��й�ȣ�� �Է��Ѵ�.
		pa = new PasswordAuthentication(id, pw);
	}

	// �ý��ۿ��� ����ϴ� ��������
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
