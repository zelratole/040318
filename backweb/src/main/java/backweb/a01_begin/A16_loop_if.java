package backweb.a01_begin;

public class A16_loop_if {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 반복문과 조건
		1. 여러가지 조건에 의해서 화면에 나타내는 형식이나 처리를 할 수 있다.
		2. 아래 1~100까지 출력을 조건에 의해서 5개 단위로 처리하는 경우..
		 * */
		int tot = 0; // 누적 연산 처리..
		for(int cnt=1;cnt<=100;cnt++) {
			System.out.print(cnt+"\t");
			if(cnt%5==0) { // 5로 나누었을 때, 나머지가 0인경우
				// 나머지값은 0~5까지를 숫자가 늘어나더라도 반복이 된다.
				// 5단위로 줄바꾸기 처리..
				System.out.println();
				
			}
			tot+=cnt;
		}			
		// 전역변수 tot를 활용하여 누적된 cnt를 처리할 수 있다.
		System.out.println("1~100까지의 총합:"+tot);
		// ex1) 1~30까지 출력하되 3의 배수는 짝!이라고 표시, 그외는 숫자 표시
		for(int cnt=1;cnt<=30;cnt++) {
			if(cnt%3!=0) {
				System.out.print(cnt);
			}else { // 나누었을 때. cnt%3==0
				System.out.print("짝");
			}
			System.out.print(", ");
		}
		
		System.out.println();
		// ex2) 1~10까지 숫자에 따라 홀/짝 표시..
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt);
			if(cnt%2==0) {
				System.out.print("(짝)");
			}else { // 
				System.out.print("(홀)");
			}
			System.out.print(", ");
		}		
		// ex3) 5~20까지 아래 형식으로 표현 하고, 마지막에 합산 표현
		//      5 + 6 + ....   20 = @@@
		System.out.println();
		int sum = 0; // 전역변수..
		for(int cnt=5;cnt<=20;cnt++) {
			sum +=cnt;
			System.out.print(cnt);
			if(cnt!=20) {
				System.out.print(" + ");
			}else { // cnt==20
				System.out.print(" = ");
				System.out.print(sum);
			}
		}			
		
		
		
		
	}

}
