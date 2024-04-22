package backweb.a01_begin;

public class A09_Calculator {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
 
# 연산자.
1. 사칙연산자.
	+, - , *, /, %
	js와 차이  나눗셈에서 정수형/정수형 ==> 정수형
	정수형/실수형, 실수형/실수형 ==> 실수형
	ex) 10/3 ==> java에서는 정수형만 결과값을 처리 (몫)
		10*1.0/3 ==> 자동형변환으로 실수형을 분모/분자를 만들어 준다.
		10/(double)3 ==> casting으로 실수형으로 명시화하여 연산처리하면 
			실수값 처리된다.
			
			
			
2. 대입연산자
3. 증감연산자/대입증감연산자
4. 비교연산자
5. 논리식
6. 3항연산자.
*/
		int num01 = 10;int num02 = 3;
		System.out.println(num01/num02); // 소숫점 이하가 절삭된다.
		System.out.println(num01*1.0/num02);
		System.out.println(num01/(double)num02);
		// 대입연산자(오른쪽데이터 왼쪽 할당 처리)
		int num03 = 5;
		int num04, num05, num06, num07;// 선언과
		num04 = num05 = num06 = num07 = 1; // 동일한 데이터 할당처리.
		System.out.println(num04++); // 출력후, 증가
		System.out.println(++num04); // 증가후, 출력
		System.out.println(num04--); // 출력후, 감소
		System.out.println(--num04); // 감소후, 출력
		num04 = num04 + 5;
		num04 += 5; // 특정한 단위로 누적 증가 처리
		int point = 5;
		System.out.println(point>=5); // >=, <=, >, <, ==, !=
		int age = 25;
		System.out.println("청소년인 경우:"+ (age>=14 && age<18));
		// 두가지 조건이 모두 true일 때..
		System.out.println("무료 입장인 경우:"+(age<5 || age>=65));
		// 5세 미만이거나 65세이상인 경우(둘 중에 하나만 true인 경우)
		System.out.println("청소년이 아닌 경우:"+ !(age>=14 && age<18));
		int pt = (int)Math.floor( Math.random()*101 );
		// 0<=Math.random()<1
		// Math.floor() : 내림처리 리턴 실수형
		// (int)Math.floor( Math.random()*101 ) :0~100 임의의 정수
		//	int pt2 =(int)Double.parseDouble( ""+Math.random()*101 );
		// 0~100점수 랜덤 처리..
		System.out.println("점수:"+pt+", 결과:"+(pt>=70?"합격":"불합격"));
		// ex) A팀과 B팀 주사위를 2개씩 굴려
		//     A팀이 승인 경우 : true/false
		//     B팀이 승인 경우 : true/false
		//     무승부 경우 : true/false
		int dice1 = (int)Math.floor(Math.random()*6+1);
		int dice2 = (int)Math.floor(Math.random()*6+1);
		int team01 = dice1 + dice2;
		int dice3 = (int)Math.floor(Math.random()*6+1);
		int dice4 = (int)Math.floor(Math.random()*6+1);
		int team02 = dice3 + dice4;
		System.out.println("A팀 : "+team01);
		System.out.println("B팀 : "+team02);
		System.out.println("A팀이 승인 경우 : "+(team01>team02));
		System.out.println("B팀이 승인 경우 : "+(team01<team02));
		System.out.println("무승부 경우 : "+(team01==team02));
		// 중첩적 3항연산자 처리
		// 조건1?"결과1"?(조건2?"결과2":"결과3")
		String result = team01>team02?"A팀 승":
			(team01<team02?"B팀 승":"무승부");
		System.out.println("결과:"+result);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
