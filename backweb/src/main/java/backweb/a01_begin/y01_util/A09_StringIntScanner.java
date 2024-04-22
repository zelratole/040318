package backweb.a01_begin.y01_util;

import java.util.Scanner;

public class A09_StringIntScanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 문자열과 숫자의 입력
1. Scanner 객체 생성..
2. 처리1
	nextInt(), nextLine()
	nextFoat()등 필요한 유형에 따라 처리한다.
	주의 bug) 숫자형을 입력하다가 문자열입력은 정상 처리 가능
	문자열 입력하다 숫자형 입력 bug발생.
3. 처리2
	모든 데이터 문자열 입력은 nextLine()으로 입력 받아서.
	필요에 따라 Integer.parseInt()를 이용하거나
	Double.parseDouble()을 활용하면 해당 타입에 맞게 처리된다.
	위에서 발생하는 버그가 발생하지 않아서 처리2을 추천한다.
*/
		Scanner sc = new Scanner(System.in); // ctrl+shift+o(자동import)
		System.out.print("구매 물품을 입력하세요:");
		String pname = sc.nextLine();
		System.out.print("가격을 입력하세요:");
		String priceStr = sc.nextLine();
		System.out.print("갯수를 입력하세요:");
		String cntStr = sc.nextLine();
		int price = Integer.parseInt(priceStr);
		int cnt = Integer.parseInt(cntStr);
		int tot = price*cnt;
		System.out.println("구매물품:"+pname);
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		System.out.println("총비용:"+tot);
		// ex) A10_StringData.java 
		//     입력할 공식 내용, 데이터1, 데이터2, 데이터3 
		//     입력받아서 처리하세요..
		//     예)  처리할 내용:삼각형의면적
		//         데이터1(밑면):25
		//         데이터2(높이):2
		//         데이터3(출력) -  삼각형의면적 : 25  
		
		
		
		
		
	}

}
