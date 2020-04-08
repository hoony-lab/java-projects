package java01.basic.ex03;

import java.util.Scanner;

public class Ex02 {
	public static void main(String[] args) {
		@SuppressWarnings("resource")
		Scanner in = new Scanner(System.in);
		String name = in.next();
		String age = in.next();
		System.out.println(name + "님은 " + age + "살 이군요 ! ");
	}
}
