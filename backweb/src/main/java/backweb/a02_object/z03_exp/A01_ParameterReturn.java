package backweb.a02_object.z03_exp;

public class A01_ParameterReturn {
	public static void main(String args[]) {
		System.out.println("시작");
		Calculator c1 = new Calculator();
		System.out.println(c1.plus(30, 40));
		System.out.println(c1.minus(30, 40));
		System.out.println(c1.multi(30, 40));
		System.out.println(c1.divide(30, 40));
		// ex) minus(), multi(), divide() 두개의 매개변수로 연산 결과값을 리턴하여 출력하세요..
		Person p01 = new Person();
		System.out.println("추가된 나이:"+p01.addAge(25));
		System.out.println("추가된 나이:"+p01.addAge(35));
		System.out.println("추가된 나이:"+p01.addAge(30));
	}
}
class Person{
	int addAge(int age) {
		return age + 5;
	}
	
}
/*
### 6. 메서드(매개변수+리턴값)
26. `Person` 클래스에 나이를 매개변수로 받아 나이를 변경(+5)하고 변경된 나이를 반환하는 메서드를 작성하세요.
27. `Book` 클래스에 페이지 수(메서드를 통해 읽은)를 매개변수로 받아 총 페이지 수(읽은)를 업데이트(누적)하고 반환하는 메서드(readpage())를 추가하세요.
---------------------------------------------
28. `Car` 클래스에 주행 거리(mileage)를 매개변수로 받아 총 주행 거리를 업데이트하고 반환하는 메서드를 만드세요.
29. `Student` 클래스에 점수를 매개변수로 받아 평균 점수를 계산하고 반환하는 메서드를 추가하세요.
		 누적되는 변수(totalSubjects-전체과목수), 전체점수(totalScorce) 
30. `Product` 클래스에판매 수량을 매개변수로 받아 총 판매량을 업데이트하고 반환하는 메서드를 작성하세요.
 
 * */

class Calculator{
	int plus(int num01, int num02) {
		return num01 + num02;
	}
	int minus(int num01, int num02) {
		return num01 - num02;
	}
	int multi(int num01, int num02) {
		return num01 * num02;
	}
	int divide(int num01, int num02) {
		return num01 / num02;
	}
}


