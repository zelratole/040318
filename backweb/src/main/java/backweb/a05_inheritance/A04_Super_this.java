package backweb.a05_inheritance;

public class A04_Super_this {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 상속에서 super와 this
1. this라는 개념은 현재 객체를 지칭하면서, 현재 객체의 구성요소를 접근 할 때, 주로 
	사용한다.
	1) this.getName() : 현재 객체의 getName()메서드 호출
		보통 하나의 클래스에서 같은 메서드를 정의할 수 없기에 this가 생략된다.
	2) this.name : 현재 객체의 name 필드 호출..
		하나의 클래스에서는 보통 매개변수의 이름과 필드의 이름을 구분하기 위하여
		사용된다.
		private Strng name;
		void setName(String name){
			this.name = name;
		}
	3) 생성자	
		this("홍길동");
		this()
		this("홍길동",25,"서울");
			선언된 생성자를 구분하여 매개변수에 따라서 호출할 때, 사용된다.
		Person(){
			System.out.println("Person객체 생성");
		}	
		Person(String name){
			this(); // 현재 선언된 생성자를 호출..
			this.name = name;
		}
		Person(String name, int age){
			this(name);
			this.age =age;
		}
	-----------------------------------------------		
			
			
2. 상속에서 this, super는 상속시는 상속받는 하위 클래스에서 현재 클래스에서
 	정의된 구성요소와 상위 클래스에서 구성된 구성요소를 구분할 떄, 주로 
 	this:현재클래스, super:상위클래스로 호출할 때, 사용된다.
 	1) 메서드(재정의시)
 	void play(){
 		super.play(); // 재정의시, 상위클래스에서도 play가 선언되어 있기에
 					  // super로 상위 클래스를 지정하여 호출할 수 있다.
 	}
 	2) 생성자(엄청주의******)
 		class Worker{
 			private String kind;
 			Worker(String kind){
 				this.kind = kind
 			} 
 		} 
 		class PoliceMan extends Worker{
 			PoliceMan(){
 				super("경찰관"); // 상속받은 하위 클래스는 받드시 상위 생성자 적어도 하나는 
 							   // 호출하여야 한다. 이 때, 선언하는 것이 super()인데
 							   // 상위에 생성자가 매개변수가 1개만 있는 것으로 선언되었을 때,
 							   // 반드시 호출하여야 한다..
 			}
 		}
 		
 		
 	

		
		
		
		
		
		
	
 * */
//		Person p01 = new Person();
//		Person p02 = new Person("홍길동");
		Person p03 = new Person("홍길동",25,"서울");
	}

}
class Person{
	private String name;
	private int age;
	private String loc;
	public Person(String name, int age, String loc) {
		this(name, age);
		this.loc = loc;
		System.out.println("매개변수가 3개 있는 생성자");
	}
	// 2개, 3개 누적호출 처리 가능 new Person("마길동",25,"서울");	
	public Person() {
		System.out.println("매개변수가 없는 생성자!!");
		System.out.println("------------------");

	}
	public Person(String name) {
		this(); // 가지고 있는 생성자를 호출 처리...
		this.name = name;
		System.out.println("매개변수가 1개 있는 생성자!!");
		System.out.println("------------------");		
	}
	public Person(String name, int age) {
		this(name);
		this.age = age;
		System.out.println("매개변수가 2개 있는 생성자!!");		
	}

	
	
}


