package com.jin.mail;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

public class JinsMail {
	Properties props;
	String id;
	String pw;
	String sndUsrName;
	String sndUsrEmail;
	
	public JinsMail() {
		// TODO Auto-generated constructor stub
		props = new Properties();
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public void setSndUsr(String sndUsrName, String sndUsrEmail){
		this.sndUsrName = sndUsrName;
		this.sndUsrEmail = sndUsrEmail;
	}
	private void getProperties(String sndUsrEmail){
		props.put("mail.smtp.starttls.enalble", "true");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		//보내는 사람 주소 설정
		props.put("mail.smtp.user", sndUsrEmail);
	}
	private Session getAuthentication(){
		if(id.equals("") || pw.equals(""))
			return null;
		return Session.getInstance(props,
			new javax.mail.Authenticator(){
				protected PasswordAuthentication getPasswordAuthentication(){
					return new PasswordAuthentication(id, pw);
				}
		});
	}
	public boolean SendMail(String sndUsrName, 
			String sndUsrEmail, String recvUsrEmail, String title, String contents){
		getProperties(sndUsrEmail);
		Session session = getAuthentication();

		Message msg = new MimeMessage(session);	
		try {
			//보내는 사람 이름, email
			msg.setFrom(
				new InternetAddress(
					sndUsrEmail, 
					MimeUtility.encodeText(sndUsrName, "UTF-8", "B")
				)
			);
			//받는사람 email
			InternetAddress [] address = {new InternetAddress(recvUsrEmail)};
			msg.setRecipients(Message.RecipientType.TO, address);
			//제목
			msg.setSubject(title);
			msg.setSentDate(new java.util.Date());
			//내용
			msg.setContent(contents, "text/html;charset=euc-kr");
			//데이터 전송
			Transport.send(msg);
		} catch (UnsupportedEncodingException | MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	
		return true;
	}
	public boolean SendMail(String recvUsrEmail, String title, String contents){
		return SendMail(sndUsrName, sndUsrEmail, recvUsrEmail, title, contents);
	}
}
