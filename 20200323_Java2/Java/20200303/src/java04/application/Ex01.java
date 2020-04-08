//package java04.application;
//
//import java.util.Scanner;
//
//public class Ex01 {
//	static String [] names, ids, pws;
//	static int idx;
//	static final String LINE = "========================================";
//
//	static void init(int size) {
//		names = new String[size];
//		ids = new String[size];
//		pws = new String[size];
//
//		idx = 0;
//
//		membership("조윤기","infiscap", "1234");
//		membership("홍길동","gildong", "1234");
//	}
//	static String getMenu(String newLine) {
//		String menuStr = ("============================="+newLine);
//		menuStr +=("1. 회원가입"+newLine);
//		menuStr +=("2. 로그인"+newLine);
//		menuStr +=("3. 종료"+newLine);
//		menuStr +=("============================="+newLine);
//		menuStr +=("위의 메뉴를 선택하세요?");
//
//		return (menuStr);
//	}
//	static void membership(String n, String i, String p) {
//		names[idx]=n;
//		ids[idx]=i;
//		pws[idx]=p;
//
//		idx++;
//	}
//
//	static void displayMember() {
//		String memberInfo="";
//
//		memberInfo = String.format("%s\n", LINE);
//		memberInfo += String.format("%10s%15s%15s\n", "이름","아이디","패스워드");
//		memberInfo += String.format("%s\n", LINE);
//
//		for(int i=0;i<idx;i++) {
//			memberInfo += String.format("%10s%15s%10s\n", names[i],ids[i],pws[i]);
//		}
//		memberInfo += String.format("%s\n", LINE);
//		System.out.println(memberInfo);
//	}
//	public static void main(String[] args) {
//		init(10);
//		displayMember();
//		/*
//      Scanner in = new Scanner(System.in);
//      int choice;
//      String name, id, pw;
//
//      System.out.println( getMenu("\n") );
//      choice = in.nextInt();
//      switch(choice) {
//      case 1:
//         System.out.println("회원가입 선택");
//
//         System.out.println("이름을 입력하세요?");
//         name=in.next();
//         System.out.println("ID를 입력하세요?");
//         id=in.next();
//         System.out.println("PW를 입력하세요?");
//         pw=in.next();
//
//         membership(name, id, pw);
//         break;
//      case 2:System.out.println("로그인 선택");break;
//      case 3:System.out.println("종료 선택");break;
//      };
//		 */
//	}
//
//
//}
//
//
//
//
//
//
