package java01.basic.ex03;

import java.util.Scanner;

public class Ex04 {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int visitCount;

		visitCount = in.nextInt();


		if(visitCount == 1) System.out.println("첫 방문 감사합니다");
		else System.out.println("항상 찾아주셔서 감사4"
				+ "합니다");

		//두수를 입력받아
		
		int n1,n2, max;
		
		n1 = in.nextInt();
		n2 = in.nextInt();
		
		max = n1 < n2 ? n2 : n1;
		
		System.out.println("두 수 중 큰 수 : " + max);
		
	}
}
