package backweb.a01_begin.y01_util;

import java.util.Scanner;
public class A06_ScannerGugu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("구구단의 단수입력:");
		int grade = sc.nextInt();
		System.out.print("구구단의 곱할 수입력:");
		int cnt = sc.nextInt();
		System.out.println(grade+" x "+cnt+" = "+(grade*cnt));
		
	}

}
