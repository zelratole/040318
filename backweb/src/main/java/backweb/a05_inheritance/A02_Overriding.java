package backweb.a05_inheritance;

public class A02_Overriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 상속에서 오버라이딩
1. 객체 지향 프로그램에서 자식 클래스가 부모 클래스의 메서드를 재정의하는 것을 의미합니다.
즉, 부모 클래스에서 정의된 메서드를 자식 클래스에서 같은 이름과 매개변수를 가지는 메서드로
다시 정의하는 것입니다. 오버라이딩을 통해 사직 클래스는 부모 클래스의 기본 동작을
변경하거나 확장할 수 있습니다.
2. 오버라이딩의 장점
	1) 동일한 메서드를 통해서 재정의하여, 상속받은 하위에서 같은 이름의 메서드이지만
		다양한 기능을 처리할 수 있다.
3. 오버라이딩의 주요 규칙
	1) 메서드 이름이 같아야 한다.
	2) 매개변수 리스트가 같아야 한다.
	3) 반환 타입이 같아야 한다.
	4) 접근 제한자가 부모 클래스 메서드보다 같거나 더 넓어야 한다.
		ex) 상위 default 하위 default이상,  상위 public ==> 하위 protected(X)
4. 기본형식
	상위 클래스{
		void call(){
			부르다
		}
	}
	하위 클래스 extends 상위클래스{
		void call(){  // 상위클래스의 메서드와 이름은 동일 하지만 내용을 다르게 정의
			외치다!!!
		}
	}
 * */
		PoliceMan pm = new PoliceMan();
		pm.working();
		Circle c1 = new Circle();
		c1.draw();
		Triangle t1 = new Triangle();
		t1.draw();
	}
}
class Worker{
	void working() {
		System.out.println("노동자가 일하다.");
	}
}
class PoliceMan extends Worker{
	void working() {
		System.out.println("경찰이 도둑을 잡다");
	}
}
// ex1) FireMan을 선언하고 working() 오버라이딩 처리하세요..
class FireMan extends Worker{
	void working() {
		System.out.println("소방관이 불을 끄다");
	}
}
// ex2) 상위 클래스로 Shape라고 선언하고 메서드로 draw()라고 도형을 그리다 처리 한후,
//      하위 클래스로 Circle/Triangle로 draw()로 원을 그리다. 삼각형을 그리다 등으로 재정의를 하세요
class Shape{
	void draw() {
		System.out.println("도형을 그리다!");
	}
}
class Circle extends Shape{
	void draw() {
		System.out.println("원을 그리다!");
	}
}
class Triangle extends Shape{
	void draw() {
		System.out.println("삼각형을 그리다!");
	}
}












