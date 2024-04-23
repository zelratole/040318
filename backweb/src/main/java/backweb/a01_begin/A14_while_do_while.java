package backweb.a01_begin;

import java.util.Scanner;

public class A14_while_do_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# while(조건){
	반복
  } 
1. 주로 반복에서 처리 
 */
// break; continue
		
		for(int cnt=1;cnt<=10;cnt++) {
			if(cnt==8) {
				System.out.println("중 단");
				break;  // 반복 중단
			}
			if(cnt==5) {
				System.out.println("다음 패스");
				continue; // 다음 step 처리..
			}
			System.out.println("카운트:"+cnt);
			
		}
		Scanner sc = new Scanner(System.in);// ctrl+shift+o
		System.out.println("# 주문 처리 시작 #");
		String orderMenu="";
		while(!orderMenu.equals("Q")) { 
			// 문자열은 비교값을 Q로 비교한다.(equals()메서드 사용)
			System.out.println("주문 메뉴를 입력하세요!!종료할려면 Q");
			orderMenu = sc.nextLine();
			System.out.println("주문내용 또는 종료? "+orderMenu);
		}
		System.out.println("# 주문 처리 완료 #");
		
		
		
		
		
	}

}
