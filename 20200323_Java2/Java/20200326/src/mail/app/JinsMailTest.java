package mail.app;

import java.util.Scanner;

import com.jin.mail.*;

public class JinsMailTest {
	
	@SuppressWarnings ("resource")
	public static void main(String[] args) {

		Scanner in = new Scanner(System.in);

		System.out.println("2534dsfd");
		JinsMail mail = new JinsMail();
		System.out.println("");

		String id = "jihun9839@gmail.com";
		System.out.println("PWD : ");
		String pw = in.nextLine();

		System.out.println(pw);
		mail.setId(id);
		mail.setPw(pw);
		String snduserName = "ANONYMOUS";
		String sndUsrEmail = "anonymous@hack.ca";
		mail.setSndUsr(snduserName, sndUsrEmail);

		//mail.SendMail(recvUsrEmail, title, contents);
		//mail.SendMail(sndUsrName, sndUsrEmail, recvUsrEmail, title, contents);

		String recvUsrEmail = "dduruwjdtn@gmail.com";
		String title = "You've got hacked !!!";
		String contents = "Send $100 to my bitcoin account !!!";

		if(mail.SendMail(recvUsrEmail, title, contents)) {
			System.out.println("Email sent !! to :" + recvUsrEmail);
		}
		else {
			System.out.println("Email ERROR !! to :" + recvUsrEmail);
		}
	}
}