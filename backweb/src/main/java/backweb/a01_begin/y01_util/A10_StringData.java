package backweb.a01_begin.y01_util;

import java.util.Scanner;

public class A10_StringData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//     예)  처리할 내용:삼각형의면적
		//         데이터1(밑면):25
		//         데이터2(높이):2
		//         데이터3(출력) -  삼각형의면적 : 25  
		Scanner sc = new Scanner(System.in);
		System.out.print("처리할 내용:");
		String title = sc.nextLine();
		System.out.print("데이터1(밑면):");
		int data01 = Integer.parseInt(sc.nextLine());
		System.out.print("데이터2(높이):");
		int data02 = Integer.parseInt(sc.nextLine());
		int result = data01*data02/2;
		System.out.print(title+"\t"+result);
		
	}

}
