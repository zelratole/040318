package backweb.a01_begin;

public class A08_StringTypeChange {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	/*
	# 숫자형문자열 정수형 변환
	1. 숫자형문자열을 정수형으로 변환하기 위해서는 
		Integer라는 wrapper클래스의 객체의 parseInt()메서드를 사용한다.
	# 숫자형문자열 실수형 변환
	1. 숫자형문자열을 실수형으로 변환하기 위해서는
		Double이라는 Wrapper클래스의 객체를 parseDouble()메서드를 사용한다.
	*/
		String strNum = "25"; // 정수형 문자열
		int num01 = Integer.parseInt(strNum) + 50;
		System.out.println("합산한 결과:"+num01);
		String strNum2 = "3.5"; // 실수형 문자열
		double num02 = Double.parseDouble(strNum2)+5.25;
		System.out.println("실수를 합산한 결과:"+num02);
		// ex1) 문자열 "70"과 "20"을 정수형으로 형변환하여,
		//     합산된 결과를 출력하세요.
		// ex2) 문자열 "30.7"과 "40.2"를 실수형으로 형변환하여
		//     합산된 결과를 출력하세요.
		String str01 = "70";
		String str02 = "20";
		int num03 = Integer.parseInt(str01);
		int num04 = Integer.parseInt(str02);
		System.out.print(str01+" + "+str02+ " = ");
		System.out.println(num03+num04);
		String str03= "30.7";
		String str04= "40.2";
		double num05 = Double.parseDouble(str03);
		double num06 = Double.parseDouble(str04);
		System.out.print(str03+" + "+str04+ " = ");
		System.out.println(num05+num06);		
	}

}
