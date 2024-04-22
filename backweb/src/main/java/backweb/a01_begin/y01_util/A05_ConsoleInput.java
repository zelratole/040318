package backweb.a01_begin.y01_util;

import java.util.Scanner;

public class A05_ConsoleInput {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바에서 console에서 입력시 필요로 하는 객체
1. InputStream 객체 기반 - 너무 복잡/추후에 진행..

2. Scanner객체를 통한 입력..
	1) 외부 객체를 사용할 때..
		import 패지키지명.객체명;
		ex) import java.util.Scanner;
	2) 객체 생성
		System.in : 자바의 기본적인 입력 객체
		를 생성자로 감싸서 객체를 생성하여 처리한다.
		Scanner sc = new Scanner(System.in);
	3) 객체의 기능 메서드 사용.
		sc.nextInt() : 입력한 데이터중 정수형을 할당하여 처리할 때 사용
		ex) int no = sc.nextInt()
		sc.nextLine() : 입력한 후, enter를 입력할 때까지 데이터를 문자열로
			받아서 처리할 때 사용
		ex) String str = sc.nextLine();
 * */
		// 객체 생성. new 생성
		// Scanner() 생성자
		// 매개변수로 System.in를 할당처리..
		Scanner sc = new Scanner(System.in);
		System.out.println("첫번째 정수를 입력하세요!");
		int num01 = sc.nextInt();
		System.out.println("입력된 정수:"+num01);
		System.out.println("연산된 정수:"+(num01+100));
		System.out.println("두번째 정수를 입력하세요!");
		int num02 = sc.nextInt();
		System.out.println("입력된 정수:"+num02);
		int tot = num01 + num02;
		System.out.println(num01+" + "+num02 +" = "+tot);
		// ex) 구구단의 단과 수를 입력 받아 결과 값을 출력 하세요..
		///    A06_ScannerGugu.java
		
		
	}

}
