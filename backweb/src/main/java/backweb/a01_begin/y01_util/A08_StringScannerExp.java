package backweb.a01_begin.y01_util;

import java.util.Scanner;

public class A08_StringScannerExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ex) A08_StringScannerExp.java
		//     가고싶은 여행지, 예정일, 함께 가고 싶은 사람  
		//     위 세가지 정보를 입력하여 출력하세요.
		Scanner sc = new Scanner(System.in);
		// ctrl+shift+o  :  import 단축키..
		System.out.print("가고 싶은 여행지:");
		String info01  = sc.nextLine();
		System.out.print("가고 싶은 예정일:");
		String info02  = sc.nextLine();
		System.out.print("함께 가고 싶은 사람:");
		String info03  = sc.nextLine();
		System.out.println("# 나의 여행 계획 #");
		System.out.println("여행지:"+info01);
		System.out.println("예정일:"+info02);
		System.out.println("동행자:"+info03);
		
	}

}
