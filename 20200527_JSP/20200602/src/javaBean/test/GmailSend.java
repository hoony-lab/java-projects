package javaBean.test;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

public class GmailSend {
//�������� ������.

	// action
	public void GmailSet(String user, String title, String content) {
		Properties p = System.getProperties();
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com"); // smtp ���� ȣ��Ʈ
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.port", "587"); // gmail ��Ʈ

		Authenticator auth = new MyAuthentication(); // ���� ���� ����

		// session ���� �� MimeMessage����
		Session session = Session.getDefaultInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);
		String fromName = "admin";
		String charSet = "UTF-8";

		try {
			// ���������ð� ����
			msg.setSentDate(new Date());

			// �۽��� ����
			InternetAddress from = new InternetAddress();
			from = new InternetAddress(new String(fromName.getBytes(charSet), "8859_1") + "<admin@acorn.com>");
			msg.setFrom(from);

			// ������ ����
			InternetAddress to = new InternetAddress(user);
			msg.setRecipient(Message.RecipientType.TO, to);

			// ���� ����
			msg.setSubject(title, "UTF-8");

			// ���� ����
			msg.setText(content, "UTF-8");

			// ���� �۽�
			Transport.send(msg);

			System.out.println("���� �߼��� �Ϸ��Ͽ����ϴ�.");
		} catch (AddressException addr_e) { // ����ó�� �ּҸ� �Է����� ���� ���
			JOptionPane.showMessageDialog(null, "������ �Է����ּ���", "�����ּ��Է�", JOptionPane.ERROR_MESSAGE);
			addr_e.printStackTrace();
		} catch (MessagingException msg_e) { // �޽����� �̻��� ���� ���
			JOptionPane.showMessageDialog(null, "������ ����� �Է����ּ���.", "�����߻�", JOptionPane.ERROR_MESSAGE);
			msg_e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
