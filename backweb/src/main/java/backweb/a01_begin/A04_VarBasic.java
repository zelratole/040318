package backweb.a01_begin;

public class A04_VarBasic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바의 변수 선언과 할당
1. 자바에서는 세부적인 변수의 유형으로 나누고 있다.
	1) 기본유형(stack영역을 선언과 할당)
	정수형(byte, short, int, long), 
	실수형(float, double), boolean,
	2) 객체유형(stack/heap영역으로 선언과 할당) 
	객체형으로 크게 나누고 있다.
2. 변수의 선언 형식
	1) 위 데이터 유형을 선언하고 변수명 지정하는 경우와
		==> int num = 0; String str = null;  // String 객체 유형에 속한다
		    double num2; num2 = 3.14; 
		선언과 할당을 분리해서 처리가 가능..    	    
	2) js와 같이 var로 선언하는 경우 둘다 사용한다.
	    ==> var num = 25; var str = "안녕";
	    이와 같이 특정 데이터가 할당함과 동시에 유형이 결정된다.
	    그러므로, var num; (X)  var str = null;
	    와 같이 유형이 결정되지 않는 선언은 에러가 발생하낟.
 * */
		int num = 0; String str = null;
		double num2; num2 = 3.14; //선언후, 할당 가능
		var num3 = 25; var str2 = "안녕";
//		var num4;(X)
//		var str3 = null;(X)
/*
3. "+" 연산자
	1) 숫자형은 데이터를 연산을 처리하고,
		25 + 25 ==> 30
	2) 문자열은 이어주는 역할을 한다.
		"25" + "25" ==> "2525"
		- 둘중에 하나라도 문자열이면 문자열로 처리된다.
			"25" + 25 ==> "2525"
		- 3개 이상일 때, 시작이 숫자로 되어 있으면 숫자까지만 연산하고
			그 외는 문자열로 연결한다.
			25 + 5 + "30" ==> "3030"
			문자열로 시작하면 모두 문자열로 인식한다.
			"25" + 5 + 7  ===> "2557"
*/		
		System.out.println(25+25);
		System.out.println("25" + "25");
		System.out.println("25" + 25);
		System.out.println(25 + 5 + "30");
		System.out.println("25" + 5 + 7);
		// ex) 국어, 영어, 수학 점수를 영문명으로 변수를
		// 선언하여, 항목별로 출력하고,
		// 총계도 출력하세요.(var, int 혼합)	
		int kor = 80;
		var eng = 90;
		int math = 95;
		System.out.println("국어:"+kor);
		System.out.println("영어:"+eng);
		System.out.println("수학:"+math);
		System.out.print("합산:");
		System.out.println(kor+eng+math);		
		// ex) 사과가격, 바나나가격, 딸기가격을 영문변수로
		// 선언하고, 가격데이터를 할당한 후, 항목별로 출력하고,
		// 총비용을 출력하세요.(var, int 혼합)
		int apple = 1000;
		var banaPrice= 4000;
		var strawPrice = 12000;
		System.out.println("사과:"+apple);
		System.out.println("바나나:"+banaPrice);
		System.out.println("딸기:"+strawPrice);
		System.out.println("총계(?):"+apple+banaPrice+strawPrice);		
		System.out.print("총계:");
		System.out.println(apple+banaPrice+strawPrice);
		System.out.println("총계:"+(apple+banaPrice+strawPrice));		
	}

}
