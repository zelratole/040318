package backweb.a05_inheritance;

public class A07_Abstract {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 추상클래스..
1. 자바에서 객체를 생성할 수 없는 클래스입니다. 추상 클래스는 하나이상의 추상 메서드를
포함할 수 있으면, 이 추상 메서드는 서브 클래스에서 반드시 구현해야 합니다.
2. 추상 클래스는 공통의 속성과 동작을 정의하고, 이를 상속받는 서브 클래스들이
구체적인 동작을 구현하도록 강제하는 데 사용됩니다.
3. 추상클래스의 특징
	1) 추상클래스는 인스턴스화할 수 없다.
		추상클래스 참조변수 =  new 추상클래스(); (X)
	2) 추상클래스는 하나 이상의 추상 메서드를 포함할 수 있다.
		abstract class 추상클래스{
			abstract void 추상메서드();
		}
	3) 추상클래스는 일반 메서드도 포함할 수 있다.:재사용을 위하여..
		abstract class 추상클래스{
			abstract void 추상메서드(); // 하위 클래스에서 재정의 목적(반드시 재정의하여야 함)
			void 일반메서드(){ // 하위 객체에서 공통적으로 사용할 목적..
				구현할 내용;
			}
		}	
	4) 하위 클래스에서 상위에 정의된 추상메서드는 반드시 재정의 하여야한다..(필수 강제)
	5) 추상 클래스는 필드와 생성자를 가질 수 있다..
			
 * */
//		Animal02 a1 = new Animal02();   에러발생 추상클래스는 자체적으로 생성하지 못 함..	
		Animal02 d1 = new Dog02();	 // 다형성으로 객체 생성..
		d1.eat(); d1.makeSound();
//	ex1) class Bird01를 상위 추상클래스를 상속받아서 처리하세욧.
		Bird01 b1 = new Bird01();
		b1.eat();b1.makeSound();
//  ex2) 상위추상클래스 Worker02  추상메서드 working(); 일반메서드 goWork()출근하다   하위 클래스 PoliceMan02, Programmer
//		 선언하여 main()에서 호출하세요..
		Worker02 w1 = new PoliceMan02();
		w1.working();w1.goWork();
		Worker02 w2 = new Programmer();
		w2.working();w2.goWork();
	}
}
abstract class Worker02{
	private String kind;
	Worker02(String kind){
		this.kind = kind;
	}
	abstract void working();
	void goWork() {
		System.out.println(kind+" 출근을 합니다!");
	}
	public String getKind() {
		return kind;
	}
}
class PoliceMan02 extends Worker02{
	PoliceMan02() {
		super("경찰관");
		// TODO Auto-generated constructor stub
	}
	@Override
	void working() {
		System.out.println(getKind()+" 도둑을 잡다");
	}
}
class Programmer extends Worker02{
	Programmer() {
		super("프로그래밍");
		// TODO Auto-generated constructor stub
	}
	@Override
	void working() {
		System.out.println(getKind()+" chatgpt로 개발을 하다!!");
	}
}





abstract class Animal02{
	abstract void makeSound(); // 재정의
	void eat() {
		System.out.println("음식을 먹다."); // 공통으로 사용
	}
}
class Dog02 extends Animal02{
	@Override
	void makeSound() {
		System.out.println("멍멍!!");
	}
}
class Bird01 extends Animal02{
	@Override
	void makeSound() {
		System.out.println("짹짹!!");
	}
}


