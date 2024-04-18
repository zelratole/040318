package backweb.a01_begin;

public class A05_declare_using {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 변수의 선언과 사용
		1. 변수는 데이터유형 변수명으로 선언할 수 있다.
			ex) int num01;
		2. 변수는 데이터유형 변수명으로 선언된 데이터는
			초기화를 하여야 사용할 수 있다.
			num01 = 0; // 초기화
			만약 초기화를 하지 않는 변수는 에러 발생.
		3. 변수는 데이터유형 변수명 = 초기데이터;로 한번에
			선언과 할당도 할 수 있다.
		*/
		int num01;
		num01 = 20;
		System.out.println(num01);
		int num02;
//		System.out.println(num02); 에러 발생..
		int num03 = 55;
		System.out.println(num03);
//     4. 문자열과 배열은 객체유형이기에 초기값을 null로 초기화 할 수 있다.
//		 null : 힙영역에 객체가 생성되지 않는 선언만 한 변수라는 뜻..
		String str;
		str = null;
		System.out.println(str);
		int []arr;
		arr = null;
		System.out.println(arr);
		String str2 = "홍길동";
		int [] arr2 = {100,200}; 
		// java는 {}로 배열을 선언할당한다.. 주의)다른 프로그램과 차이나는 부분..
		System.out.println(str2); // 문자열이기에 기본적으로 할당 데이터 확인
		System.out.println(arr2); // heap영역의 주소값 확인
	}

}
