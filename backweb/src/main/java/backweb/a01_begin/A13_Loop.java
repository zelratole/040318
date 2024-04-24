package backweb.a01_begin;

public class A13_Loop {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 반복문 처리
1. for문
	for(초기값;반복조건;증감연산자){
		반복할 내용
	}
2. while문
	while(반복조건){
		반복할 내용..
	}
3. do{
      1반이상 반복할 내용(일단 최소한 한번은 반복)
   }while(반복조건);
4. continue/break;
   continue : 해당 반복 step 해당 단계만 처리하지 않고
    다음 반복 step 진행
   break : 반복을 중단처리하는 구문
5. 반복문 안에 반복문
	구구단..

6. 반복문과 조건문
	반복을 중단 또는 여러가지 알고리즘 처리시 사용..
7. 반복문과 배열
	1)배열 선언
		String [] arry = {"사과","바나나","딸기"};
	2)배열 호출
		- 기본 for문
		for(int idx=0;idx<arry.length;idx++){
			arry[idx]   
		}
		// index를 가지고 와서, index별로 데이터를 처리
		- forEach구문
		for(String fruit:arry){
			fruit : 단위데이터를 가지고 와서 처리한다...
			// 반복문 배열 안에 데이터가 없을 때까지 처리한다.
		} 
		
   
 * */
		// 
		System.out.println("# 자바의 기본 for문 #");
		for(int count=1;count<=10;count++) {
			System.out.println("카운트 :"+count);
		}	
		// ex1) 5~15까지 출력
		System.out.println("# 5~15 출력 #");
		for(int cnt = 5;cnt<=15;cnt++) {
			System.out.print(cnt+", ");
		}
		System.out.println();
		// ex2) 100~90까지 출력
		System.out.println("# 100~90 출력 #");
		for(int cnt= 100;cnt>=90;cnt--) {
			System.out.print(cnt+", ");
		}
		System.out.println();
		// ex3) 1~20까지 홀수만 출력(증감연산자 cnt+=2  활용)
		System.out.println("# 1~20 출력 홀수 #");
		for(int cnt=1;cnt<=20;cnt+=2) {
			System.out.print(cnt+", ");
		}
		System.out.println();
	}

}
