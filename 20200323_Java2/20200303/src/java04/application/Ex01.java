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
//		membership("������","infiscap", "1234");
//		membership("ȫ�浿","gildong", "1234");
//	}
//	static String getMenu(String newLine) {
//		String menuStr = ("============================="+newLine);
//		menuStr +=("1. ȸ������"+newLine);
//		menuStr +=("2. �α���"+newLine);
//		menuStr +=("3. ����"+newLine);
//		menuStr +=("============================="+newLine);
//		menuStr +=("���� �޴��� �����ϼ���?");
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
//		memberInfo += String.format("%10s%15s%15s\n", "�̸�","���̵�","�н�����");
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
//         System.out.println("ȸ������ ����");
//
//         System.out.println("�̸��� �Է��ϼ���?");
//         name=in.next();
//         System.out.println("ID�� �Է��ϼ���?");
//         id=in.next();
//         System.out.println("PW�� �Է��ϼ���?");
//         pw=in.next();
//
//         membership(name, id, pw);
//         break;
//      case 2:System.out.println("�α��� ����");break;
//      case 3:System.out.println("���� ����");break;
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
