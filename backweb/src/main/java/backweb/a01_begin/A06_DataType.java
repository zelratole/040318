package backweb.a01_begin;

public class A06_DataType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바의 데이터 유형
1. 기본데이터유형(primitive data type)
	1) stack영역에서 바로 할당하여 사용하는 데이터 유형
		변수를 지정 데이터 할당
		int age = 25; 
		// 정수형 데이터를 할당할 메모리 공간을 age로 선언하고 데이터를 25 할당.
	2) 숫자형
		정수형
			byte(8bits) : -128~127
				영문문자를 나타낼 수 있는 word단위
			char(2byte) : 0~65535
				char c01 = 'A'; => 65라는 정수가 실제 저장되면 unicode로
					mapping 
			short(2byte) 
			**int(4byte-32bits) -2147483648~2147483647
				     약 (+- 21억)
		    int num01 = 3; // 데이터 유형 기본적으로 int유형으로
		    int num02 = 3147483647; // 할당 불가..
		    ==> long num03 = 3147483647L; // 마지막에 L를 붙여 long형
		    // 표시해서 변경..
		      
			long(8byte-64bits)
		실수형
			float(4byte)
			float flt = 3.14F; // float유형을 선언할 때는 F를 붙임..
			**double(8byte)
			double dbl = 3.14;
	3) boolean
		비교연산식/논리연산식의 결과값으로 true/false값 가져오는 데이터 처리시
		할당하는 type
		boolean isBool = true;
		boolean isPass = point>=70;
		boolean isLoginSuccess = false; // 로그인 성공여부..
		
*/
		for(int cnt = 1;cnt<=127;cnt++) {
			System.out.println(cnt+" "+(char)cnt);
		}
		// -128~127
		byte byte01 = 127; 
//		byte byte02 = 128;  범위를 벗어나면 에러발생..
//		메모리를 적당한 범위에 할당하여 효율적으로 사용하기 위해서 구분한다.
//		크기와 유형에 맞게 데이터를 할당 처리.
//		int int01 = 9999999999999; (X) 21억범위를 초과
		long long01 = 9999999999999L; // long형일 때는 L를 붙여주어 구문한다.
		double dbl01 = 3.14; // 실수의 default 유형..
		float dlot01 = 3.14F; // 실수에 F가 붙여서 사용..
//		ex)위에  선언된 정수형 데이터유형을 적절하게 문법에 맞게 선언하고,
		// 출력해보세요...
		byte num01 = 50;
		short num02 = 50;
		int num03 = 50;
		long num04 = 50L;
		float num05 = 3.56f;
		double num06 = 3.14;
		char ch01 = 'A';
		int codeVal = ch01;
		System.out.println("byte:"+num01);
		System.out.println("short:"+num02);
		System.out.println("int:"+num03);
		System.out.println("long:"+num04);
		System.out.println("float:"+num05);
		System.out.println("double:"+num06);
		System.out.println("char:"+ch01);
		System.out.println("code value:"+codeVal);
		boolean isTrue = true;
		int point = 80;
		boolean isPass = point>=70;
		boolean isLogin = true;
		System.out.println(isTrue);
		System.out.println(point+":"+isPass);
		System.out.println(isLogin);
		// ex) age와 변수를 지정해서 나이와 성인여부를 출력하세요..
		int age = 19;
		boolean isAdult = age>=18;
		System.out.println("입력한 나이:"+age+", 성인여부:"+isAdult);
		
		
		
		
		
		
		
	}

}
