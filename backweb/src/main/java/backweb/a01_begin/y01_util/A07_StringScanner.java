package backweb.a01_begin.y01_util;

import java.util.Scanner;
public class A07_StringScanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("이름을 입력:");
		String name = sc.nextLine();
		System.out.print("나이를 입력:");
		String age = sc.nextLine();
		System.out.print("사는곳 입력:");
		String loc = sc.nextLine();
		System.out.println("# 입력된 정보 #");
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		System.out.println("사는곳:"+loc);
	}

}
