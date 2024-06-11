package backweb.a05_inheritance;

public class A01_Basic {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 상속
1. 상속이란?
	1) 객체지향 프로그래밍의 중요한 특징 중 하나로, 클래스 간의 관계를 설정하여
	코드의 재사용성을 높이는 방법이다.
	2) 부모 클래스(또는 슈퍼클래스)의 속성과 메서드를 자식 클래스(또는 서브클래스)가
	물려받아 사용할 수 있다.
2. 기본 형식
	1) 상위클래스 선언
	2) 하위클래스
		class 하위클래스 extends 상위클래스{
			//추가할 필드와 메서드 정의
		}
 * */
		Dog d1 = new Dog();
		d1.eat(); // 상위 클래스에서 상속받은 기능을 사용할 수 있다.
		d1.bark();
		Bird b1 = new Bird();
		b1.eat();
		b1.fly();
		Bus bs = new Bus();
		bs.move();
		bs.ride();
	}

}
// 상위 클래스
class Animal{
	void eat() {
		System.out.println("동물이 음식을 먹다");
	}
}
class Dog extends Animal{
	void bark() {
		System.out.println("개가 짖다!!");
	}
}
// ex1) Bird 로 추가하여 fly() 메서드를 정의하고, 기존 메서드와 추가메서드가 처리되는 것
class Bird extends Animal{
	void fly() {
		System.out.println("새가 하늘을 나르다");
	}
}
// ex2) Vehicle 탈것 클래스  move() 탈것이 운행된다,   상속받은 하위로 Bus  ride() 승객을 태우다 추가 처리.
class Vehicle{
	void move() {
		System.out.println("탈 것이 운행되다");
	}
}
class Bus extends Vehicle{
	void ride() {
		System.out.println("버스가 승객을 태우다.");
	}
}










