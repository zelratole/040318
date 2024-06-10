package backweb.a05_inheritance;

public class A03_PolyMorphism {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 다형성
1. 다형성은 객체 지향 프로그램의 중요한 개념 중 하나로, 같은 타입의 객체가 다른
방식으로 동작할 수 있도록 하는 것을 말합니다. 다형성은 주로 상속과 인터페이스를 통해
구현되며, 이를 통해 코드의 유연성과 재사용성을 높일 수 있습니다.
2. 다형성의 기본 형식
	1) 클래스 선언
		상위클래스{
			재정의메서드(){}
		}
		하위클래스 extends 상위클래스{
			재정의메서드(){}
		}
	2) 호출 형식1
		상위클래스 s1 = new 하위클래스1();
		상위클래스 s2 = new 하위클래스2();
		상위클래스 s3 = new 하위클래스3();
		s1.재정의메서드();
		s2.재정의메서드();
		s3.재정의메서드();
		상위클래스에서 상속받은 하위클래스로 각각의 객체를 생성하면
		상위클래스의 객체의 참조변수로 다양한 하위 클래스로 객체가 생성된다.
		즉, 상위클래스의 객체 메모리로 다양한 하위 객체를 할당하여 처리할 수 있다.
		
		이 때문에, 동일한 메서드를 호출할지라도 재정의(다르게 정의된 내용)때문에
		다양한 기능을 처리할 수 있다.
	3) 호출 형식2
		상위클래스[] arry = {new 하위클래스1(),new 하위클래스2(), new 하위클래스3()};
		List<상위클래스> list = new ArrayList<상위클래스>();
		list.add(new 하위클래스1()); list.add(new 하위클래스2()); list.add(new 하위클래스3());
		for(상위클래그 참조:arry){
			arry.재정의메서드()
		}
 * */	// 상위는 다양한 하위객체로 할당이 가능하다.
		Employee e1 = new Developer();
		Employee e2 = new Designer();
		e1.working();
		e2.working();
		/*ex1) Manager 클래스를 선언하고 인력을 관리하다 재정의 다형성으로 처리하고
		 *ex2) Instrument play()연주를 하다를 통해 하위 Piano, Guitar 에서 재정의하여 다형성 처리하는 형태로 구현해보세요  */
		Employee e3 = new Manager();
		e3.working();
		Instrument[] arry = { new Piano(),new Guitar() };
		System.out.println("# 다형성을 이용한 기계 #");
		for(Instrument ins:arry) {
			ins.play();
		}
	}
}
class Instrument{
	void play() {
		System.out.println("악기를 연주하다!");
	}
}
class Piano extends Instrument{
	void play() {
		System.out.println("피아노를 연주하다!");
	}
}
class Guitar extends Instrument{
	void play() {
		System.out.println("기타를 연주하다!");
	}
}



class Employee{
	void working() {
		System.out.println("직원이 일을 하다.");
	}
}
class Developer extends Employee{
	void working() {
		System.out.println("개발자가 코딩을 하다.");
	}
}
class Designer extends Employee{
	void working() {
		System.out.println("디자이너가 웹디자인을 하다.");
	}	
}
class Manager extends Employee{
	void working() {
		System.out.println("인력을 관리 하다.");
	}		
}
