package backweb.a07_api;

import backweb.vo.Person;

public class A01_String {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바 API(Application Programming Interface)
1, 자바 프로그램 언어로 개발된 다양한 클래스와 인터페이스의 집합으로 개발자들이 쉽게
사용할 수 있도록 제공됩니다. 자바 API는 자바 표준 라이브러리의 일부이면, 자바 애플리케이션의
기능을 확장하고 쉽게 개발할 수 있도록 도와줍니다.
2. 주요 패키지 
	1) java.lang.* 패키지
		기본적인 클래스를 포함하여, 자동으로 임포트되는 패키지이다.
		- Object : 모든 클래스의 최상위 클래스
			clone() : 객체 복제
			equals() : 객체의 동등성 비교
			hashCode() : 객체의 해시 코드 반환
			toString() : 객체의 문자열 표현 반환
		- String: 불변문자열 클래스
			charAt(int index) : 특정 위치의 문자열 반환
			substring(int beginIndex, int endIndex) 부분 문자열 변환
			length() : 문자열의 길이 봔환
			replace() : 문자열의 치환
		- Math
			abs() :절대값
			sqrt() :제곱근
			random() : 0.0~1.0사이 임의 double값 반환
			
 * */
		// 자바의 최상위 클래스 Object
		Object o = new Object();
		// 다형성으로 모든 객체를 할당할 수 있다.
		Object o1 = new Person("홍길동",25,"서울");
		// 할당한 객체를 해당 객체의 고유 메서드를 사용할려면
		// casting 하여야 한다.
		Person p01 = (Person)o1;
		System.out.println(p01.getName());
		Object o2 = new String("안녕");
		System.out.println(o2.hashCode()); // 고유의 hash코드값이 있다..(주소값)
		System.out.println(o1.hashCode());
		System.out.println(o.hashCode());
		String str1 = "하이";
		String str2 = "안녕";
		String str3 = "안녕";
		System.out.println(str1.hashCode());// hashCode()값으로 식별하여 확인
		System.out.println(str2.hashCode());
		System.out.println(str3.hashCode());
		
		// toString()를 재정의하면 해당 객체의 참조변수로 호출하였을 때, 나타날 내용이다.
		Music m1 = new Music();
		Music m2 = new Music();
		System.out.println(m1);
		System.out.println(m2);
	}
}
class Music{
	
	public String toString() {
		return super.toString()+", 현재 객체 참조값 호출 내용";
	}
}
/*
# String
1. 문자열은 아래와 같은 단계로 해당 객체가 만들어 졌다.
	char ==> char[] ==> String
	
	정수형의 코드값으로 char로 문자한자에 대한 저장을 할 수 있게 하였고,
	char c='A', 이것을 배열로 만들 것이 문자배열 char[] arr = {'h','e','l','l','o'}
.	이 문자배열을 일반적으로 많이 사용되는 문자열의 형태인 String객체로 사용하게 되었다.
	String str = "hello";
2. 그래서 문자열은 문자배열의 특징인 index 접근이 가능한 특징과, 객체의 특징으로 메모리가
	heap/stack영역 둘다 사용하게 되었다.
3. String 기능 처리 생성자
	new String()
	new String(byte[]) byte코드값을 char로 바꾸어서 배열로 설정한 것을 문자열로까지 처리한다.
	new String(char[])
	new String("문자열")
4. 자바만의 특별한 내용
	String은 객체로 특성으로 인해 참조변수==참조변수 형태로 비교가 가능하나, 같은 문자열이더라도
	다른 참조변수(heap영역)을 가지고 있기에 위와 같은 주소값비교 형태로 처리하면 원하지 않는 결과
	가 나온다. String str = new String("홍길동"); String str1 = new String("홍길동");
	str == str1 (false)
	문자열 자체 내용으로 비교할 때는 str.equals(str1)을 활용하여야 한다.
	==> 자바에 String 비교시 특징
 * */
	
