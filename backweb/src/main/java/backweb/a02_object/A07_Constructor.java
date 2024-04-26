package backweb.a02_object;

public class A07_Constructor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 생성자
1. 객체를 생성할 때, 클래스명과 동일한 함수가 정의된 것을 말한다.
	class Person{
		Person(){ // 생성자.
		
		}
	}
	Person p01 = new Person(); // 생성자 호출. 
2. 생성자를 선언하지 않으면 내부적으로 컴파일시 default 생성자가 구현되어 그 생성자를 호출한다.
	class Person{		
	}
	==> 보이지 않지만 default 생성자가 포함되어 있다.
	class Person{
		Person(){}
	}	
	Person p02 = new Person(); // 위 클래스에 보이지 않지만, 생성자가 default로 만들어져 
	있어서 호출이 가능한 것이다.
3. 주요 기능
	1) 생성자는 객체를 생성할 때, 호출하여 사용된다.
		new 생성자();
		주의) 기본 생성자는 사용자가 생성자를 선언할 때, 사라진다.
		생성자는 여러 생성자를 매개변수에 따라서 생성할 수 있다.(overloading규칙에 의해)
	2) 필드를 초기화할 때, 사용된다.
		클래스에서 선언된 필드값에 초기 데이터를 할당해야 할 때, 활용 된다.
		class Person{
			String name;
			String gender;
			Person(String name, String gender){
				this.name = name; // this.name 매개변수로 오는 name과 필드에 있는 name이 동일하기에 구분하기 위해서
				this.gender = gender;
			}
		}
		==> 위와 같이 클래스로 선언되어 있으면
		Person p01 = new Person("홍길동", "남자");
		p01.name : "홍길동"이 할당되어 있음.
		p01.gender : "남자"가 할당되어 있음.
3. 특징
	1) default 생성자를 생성자를 선언하지 않았을 때 호출이된다.
	2) 생성자는 주요 기능이 필드 초기화이므로 기능메서드와 달리 리턴값이 없다.
	3) 생성자를 클래스명과 동일하여야 한다.
	4) 하나의 클래스 안에서 여러 개 생성자를 선언할 수 있다. 단, overloading 규칙에 적합하여야 한다.
	ps) overloading 규칙 생성자뿐만아니라 메서드에서도 적용된다.
		- 매개변수의 갯수가 다르면 선언가능하다.
			Person(){}
			Person(String name){}
			Person(String name, int age){}
		- 매개변수의 type이 다르면 선언가능하다.
		- 매개변수의 여러개 일 때, type이 다른 순서로 선언하면 가능하다.
		
 * */
		Man m1 = new Man(); // default 생성자가 호출되어 있기에 가능하다.
		Woman w1 = new Woman();
		Woman w2 = new Woman();
		System.out.println(m1);
		System.out.println(w1);
		System.out.println(w2);
		// ex) Puppy, Computer, Book 그외는 2가지 이상 클래스를 선언하고,
		//     생성자를 추가하여 호출해보세요..
		Puppy pu = new Puppy();
		System.out.println(pu);
		Computer c01 = new Computer();
		System.out.println(c01);
		Computer c02 = new Computer();
		System.out.println(c02);
		// ## class와 object의 주소개념
		// 동일한 롯데월드 타워도면(class)으로 
		// 다른 위치(서울,부산,제주도-참조변수출력-@156643d4)을 건물 생성.(Object)
		// 515f550a ==> 가상 메모리에 JVM에서 하드웨어에서 만든 메모리 기반에 가상메모리
		// 기법에 의해서 만들어진 메모리를 이용한다. jvm에서는 효율화를 위해 자동으로 
		// 할당/변경/삭제를 한다. 운영체제를 재기동시 다르게 메모리가 할당된다.
		Book b1 = new Book(); // b1 외부에서 지칭
		Book b2 = new Book(); // b1 외부에서 지칭
//		Baby by1 = new Baby();  default 생성자는 개발자가 생성자를 선언하는 순간 사라진다.
		Baby by1 = new Baby("귀염둥이 아기"); // 맞는 매개변수로 할당하여야 한다. 
		System.out.println(by1.name);
		Baby by2 = new Baby("이쁜둥이 아기"); // 맞는 매개변수로 할당하여야 한다. 
		System.out.println(by2.name);
		//ex) Car01(필드-제조사,이름,최고속도)를 선언하고, 생성자를 통해, 필드 초기화 객체를 3개를 생성하여 
		//   속성값을 출력하세요.
		Car01 c1 = new Car01("현대","그랜저",250);
		Car01 c2 = new Car01("기아","k7",260);
		Car01 c3 = new Car01("현대","산타페",230);
		System.out.println(c1.comp+","+c1.kind+","+c1.maxSpeed);
		System.out.println(c2.comp+","+c2.kind+","+c2.maxSpeed);
		System.out.println(c3.comp+","+c3.kind+","+c3.maxSpeed);
		/*
		ex2) 계좌번호, 예금주 이름, 잔액 필드를 가진 BankAccount 클래스 생성
			 생성자를 통해 초기 계좌번호, 예금주 이름, 잔액 설정
		ex3) 이름, 체력, 공격력, 방어력 필드를 가진 Character 클래스 생성
			 생성자를 통해 캐릭터 이름, 체력, 공격력, 방어력 설정	 
		 * */
		BankAccount ba01 = new BankAccount("342343-433-34332","김철수",1000000);
		BankAccount ba02 = new BankAccount("553422-433-78883","오영희",2000000);
		Character ch01 = new Character("영웅", 100,50,20);
		Character ch02 = new Character("몬스터", 80,40,30);
		
		System.out.println(ch01.name+","+ch01.hp+","+ch01.attack+","+ch01.defense);
		System.out.println(ch02.name+","+ch02.hp+","+ch02.attack+","+ch02.defense);
	}
}
class Character{
	String name;
	int hp;
	int attack;
	int defense;
	Character(String name, int hp, int attack, int defense){
		this.name = name;
		this.hp = hp;
		this.attack = attack;
		this.defense = defense;
		System.out.println(this+"객체 생성");
	}
}
class BankAccount{
	String accountNumber;
	String accountName;
	int balance;
	BankAccount(String accountNumber, String accountName, int balance){
		this.accountNumber = accountNumber;
		this.accountName = accountName;
		this.balance = balance;
		System.out.println("# 계좌 객체 생성("+this+")");
		System.out.println("계좌 번호:"+this.accountNumber);
		System.out.println("계좌 소유자:"+this.accountName);
		System.out.println("계좌 잔액:"+this.balance);
	}
	
}
class Car01{
	String comp;
	String kind;
	int maxSpeed;
	Car01(String comp, String kind, int maxSpeed){
		this.comp = comp;
		this.kind =kind;
		this.maxSpeed = maxSpeed;
		System.out.println(this+"객체 생성");
	}
}
class Baby{
	String name;
	Baby(String name){
		this.name=name;
		System.out.println(this);
		System.out.println("객체 생성과 함께 필드값 초기화 처리..");
	}
}
class Book{
	// 클래스명과 동일하게 설정.
	Book(){
		System.out.println(this); // 내부에서 객체 지칭
		System.out.println("객체 생성");
	}
}

class Computer{
	Computer(){
		System.out.println("컴퓨터 객체 생성!!");
	}
}
class Puppy{
	// Puppy(){}
}


// 같은 package에 Person선언되어 있을 때는 중복해서 선언하지 못한다.
class Man{
	//Man(){}
}
class Woman{
	Woman(){
		System.out.println("객체 생성자 호출(Woman)");
	}
}


