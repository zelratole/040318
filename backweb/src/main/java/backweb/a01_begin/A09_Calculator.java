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
	}

}
