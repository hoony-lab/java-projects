package java01.basic.ex02;

import java.util.Scanner;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hell");	
		System.out.println("world");
		
		
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		System.out.println("����� �̸� ? ");
		String name  = scanner.next();
		
		System.out.println(name + " �� �ȳ��ϼ���"
				+ "��������");
		
	}
}