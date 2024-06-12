package backweb.a07_api;

public class A05_Wrapper {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# Wrapper클래스
1. 기본데이터유형을 사용하다 보면 여러 형태로 변환이 필요하건나 기능적으로 처리해야 되는 경우가 많다.
	type이 기본 유형으로 되다보니 형변환이 일어나지 않으면 이러한 기능에 대한 한계가 발생한다.
2. 이 때, 자바 api에서는 기본 데이터유형과 연결되는 객체 유형을 만들어 필요에 따라서 제공되는 메서드를
	이용해서 여러가지 데이터 유형 변경, 치환, 기능 처리를 할 수 있게 하는데 이를 Wrapper 클래스라한다.
3. 형태 (기본유형과 연결)
	byte ==> Byte
	char ==> Character
	..
	int ==> Integer
	..
	boolean ==> Boolean
	주로 char, int이외에는 시작을 대문자로 하는 형태이다.
 * */
		int num01 = 25; // 기본유형
		Integer num01Wraper = Integer.valueOf(num01); // Wrapper클래스로 객체 변경.
		// 기본유형이 wrapper 클래스로 객체가 되는 순간 여러가지 속성/메서드를 활용할 수 있다.
		System.out.println(num01Wraper.byteValue());
		System.out.println(num01Wraper.hashCode());
		System.out.println(num01Wraper.MAX_VALUE);
/*
4. 기본적으로 활용도가 높기에 Boxing, UnBoxing으로 유연하게 객체과 기본데이터유형으로 변환이 자유롭게 되게 처리한다.
	1) Boxing : 기본데이터유형에서 객체로 변환되는 것을 말한다.
		ex) Integer num01Wraper = Integer.valueOf(num01)
	2) UnBoxing : 객체에서 기본 데이터 유형으로 변환되는 것을 말한다.
		ex) int num01 = num01Wraper.inValue();
5. autoBoxing, autoUnboxing
	위와 같이 boxing, unboxing은 기능메서드를 통해서 처리해야하는 불편함이 있어서, 바로 할당되게끔 자바에서는 자원한다.
		ex) Integer num02Wrapper = 25;  // autoboxing
		ex) int num02 = num02Wrapper; // autoUnboxing
# 실무예제
List<Integer> prices = new ArrayList<Integer>();
prices.add(Integer.valueOf(3000)); boxing 처리
prices.add(4000); autoboxing 처리

int num03 = prices.get(1); autoUnboxing 처리..


		
		
		
		
		
		
		
		
 * */		
	}

}
