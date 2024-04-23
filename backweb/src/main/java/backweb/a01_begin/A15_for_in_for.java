package backweb.a01_begin;

public class A15_for_in_for {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 반복문 안에 반복문 처리.
1. 주로 여러가지 알고리즘을 처리할 때, 사용된다.
2. 특정한 로직이 돌아 가는  상태에서 개별적으로 또 반복문이 처리되는 경우
3. 예제
	구구단을 각각의 단수가 반복해서 2~9단까지 처리 되는 가운데
	곱할 숫자가 다시 각 단수마다 1~9까지 곱해지는 처리를 한다.
 * */
		for(int grade=2;grade<=9;grade++) {
			System.out.println("## "+grade+"단 ##");
			for(int cnt=1;cnt<=9;cnt++) {
				System.out.println(grade + " x " + cnt+ " = "+
						(grade*cnt) );
			}
		}
		for(int row=1;row<=4;row++) {
			for(int col=1;col<=4;col++) {
				System.out.print("*");
			}
			System.out.println();
		}
		// ex1) 7X7 * 표시
		for(int row=1;row<=7;row++) {
			for(int col=1;col<=7;col++) {
				System.out.print("*");
			}
			System.out.println();
		}		
		// ex2) 2X4 * 표시
		for(int row=1;row<=2;row++) {
			for(int col=1;col<=4;col++) {
				System.out.print("*");
			}
			System.out.println();
		}			
		// ex3) 5X3 * 표시
		for(int row=1;row<=5;row++) {
			for(int col=1;col<=3;col++) {
				System.out.print("*");
			}
			System.out.println();
		}			
		
	}

}
