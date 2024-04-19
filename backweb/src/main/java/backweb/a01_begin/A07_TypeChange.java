package backweb.a01_begin;

public class A07_TypeChange {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 형변환(type change)
1. 데이터 타입을 다른 타입으로 변환하는 것을 말한다.
 	1) 기본 데이터 타입끼리
 		작은 데이터 <==> 큰 데이터
 			byte no = 30;
 			short no1 = no;
 			double no2 =3.14;
 		실수 <==> 정수
 			int no3 = (int)no2; 큰데이터 ==> 작은 데이터
 	2) 객체형끼리 변경
 		- 문자열 데이터와 숫자형 변경
 			"301" vs 301
 			"301"+"101" vs 301+101
 			==> 301101  vs 402
 		ps) 실무형태
 		모든 데이터는 기본적으로 문자열형태로만 전송하고 전달받을 수 있다.
 		내장된 객체에서 지원하는 기능메서드를 통해서 전환이 가능하다.
 		문자열 ==> 숫자
 			Integer(Wrapper클래스)
 		Integer.parseInt("25") ==> 25
 		Double.parseDouble("3.14") ==>3.14	
 		숫자 ==> 문자
 		System.out.println("2+3="+2+3)
 		==> 2+3 = 23
 		int num01 = 20
 		int num02 = 30
 		String str = ""+num01+num02 ==> "2030"
 		# 최대한 간단한 방법으로 숫자를 문자열로 변환하는 방법
 		""+20 ==> "20"
 		int num01 = 25
 		# 정규적인 절차에 의한 변경 방법..
 		String strNum01 = String.valueOf(num01);
 		String strNum02 = Integer.toString(num01);
2. 종류
 	1) 자동형변환(묵시변환)-promote
 		작은 데이터유형 큰데이터유형으로 할당될 때..
 		
 	2) 강제형변환(명시변환)-casting
 		큰데이터유형 작은데이터유형으로 할당될 때..
 */
		int num01 = 30;
		double num02 = num01; 
		// promote(형태만 바뀌어 지고 유실이 일어나지 않음)
		System.out.println(num01);
		System.out.println(num02);
		double num03 = 3.14;
//		int num04 = num03; 바로 할당하면 에러발생 작은 데이터로 할당된다고 명시
		int num05 = (int)num03;
		System.out.println(num03);
		System.out.println(num05); // casting되어 소숫점이하가 사라짐..
// ex1) byte로 물건가격과 갯수를 할당하여 promote로 int형에 할당하여 
//      총비용을 출력하고
		byte price = 100;
		byte cnt = 5;
//		byte tot = price*cnt; 에러발생  연산자가 들어가서 int형이 필요..
	    int tot = price*cnt;
	    System.out.println("총비용:"+tot);
// ex2) 위 총비용을 할인율 30%(0.3)으로 할인된 값을 casting으로 소숫점 이하를 
//      제외하고 출력하세요
	    int disPay = (int)(tot*0.3); // 할인된금액 
	    //                             - 소숫점이하 절삭(casting 필요)
	    int disTot = tot- disPay; // 최종비용 = 총비용-할인된값
	    System.out.println("할인금액:"+disPay);
	    System.out.println("할인된 최종 금액:"+disTot);
	    
	    
	    
	    
		
		
	}

}
