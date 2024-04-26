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


