package backweb.a01_begin;

import java.util.Scanner;

public class A11_ifelseExp {

	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		//     Scanner를 통해서 구매한 물건의 가격/갯수를 입력받아.
		//     총비용이  50000미만  일반고객
		//             50000~100000미만  우수고객.
		//             100000이상  VIP
		Scanner sc = new Scanner(System.in);
		System.out.print("물건의 가격:");
		int price = Integer.parseInt(sc.nextLine());
		System.out.print("구매 갯수:");
		int cnt = Integer.parseInt(sc.nextLine());
		int totPay = price*cnt;
		System.out.println("총비용:"+totPay);
		if(totPay<50000) {
			System.out.println("일반고객");
		}else if(totPay<100000) {
			System.out.println("우수고객");
		}else {
			System.out.println("VIP");
		}
		
	}

}
