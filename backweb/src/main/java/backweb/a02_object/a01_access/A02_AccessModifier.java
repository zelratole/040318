package backweb.a02_object.a01_access;

public class A02_AccessModifier {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class Man{
	Woman woman; // 같은 패키지에 있기때문에 접근제어자가 default(X) 이기에 가능
	void call() {
		woman = new Woman();
		woman.name="홍길동"; //
//		woman.age = 25; age는 접근제어자가 private이기에 외부 클래스 접근불가..
	}
}
class Woman{
	String name; // 접근제어자가 붙이 않는 default
	private int age;// 접근제어자가 private
	
	void call() {
		age = 25;
	}
	
}
//class Person{}//에러 발생은 다른 파일에 패키지명이 동일한 상태에 같은 클래스가 선언되어 있기
// 때문이다.