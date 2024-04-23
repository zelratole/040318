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
//		System.out.println("# 주문 처리 시작 #");
//		String orderMenu="";
//		while(!orderMenu.equals("Q")) { 
//			// 문자열은 비교값을 Q로 비교한다.(equals()메서드 사용)
//			System.out.println("주문 메뉴를 입력하세요!!종료할려면 Q");
//			orderMenu = sc.nextLine();
//			System.out.println("주문내용 또는 종료? "+orderMenu);
//		}
//		System.out.println("# 주문 처리 완료 #");
//      ctrl + / :블럭 주석..
//		ex) 등록할 회원을 입력받아서,  회원명단에 등록 시키세요.. += 활용..
//		    종료시, Q
//		String memberList = "";
//		String order="";
//		while(!order.equals("Q")) {
//			System.out.print("회원명을 입력하세요! 종료할려면 Q입력:");
//			order = sc.nextLine();
//			if(!order.equals("Q")) {
//				memberList+=order+", ";
//			}
//		}
//		System.out.println("# 등록된 회원 list #");
//		System.out.println(memberList);
/*
do{
	최소 1번이상 처리하고,
	조건이 맞는지 확인하여 반복 처리.
}while(조건);
 * */		
		
		System.out.println("# 숫자 맞추기 게임 #");
		int comCnt = (int)(Math.floor(Math.random()*10+1));
		//System.out.println("컴퓨터의 숫자test:"+comCnt);
		// 내가 선택한 숫자
		int myChoice = 0;
		// 번째로 맞출 카운트..
		int cnt=0;
		do {
			System.out.print(++cnt+"회차 도전! 1~10까지 숫자를 "
					+ "입력하여 컴퓨터의 숫자를 맞춰보세요:");
			myChoice = Integer.parseInt(sc.nextLine());
			System.out.println("입력한 숫자:"+myChoice);
			if(myChoice>comCnt) {
				System.out.println("입력한 숫자는 컴퓨터의 숫자보다 크네요");
			}
			if(myChoice<comCnt) {
				System.out.println("입력한 숫자는 컴퓨터의 숫자보다 작네요");
			}
		}while( comCnt!=myChoice ); 
		//같지 않을 때, 반복 처리 맞았을 때, 반복 종료 처리
		System.out.println(cnt+"번째 맞추었습니다.!!! 축^^");
		System.out.println("컴퓨터의 숫자:"+comCnt);
	
		
		
		
		
		
		
		
	}

}
