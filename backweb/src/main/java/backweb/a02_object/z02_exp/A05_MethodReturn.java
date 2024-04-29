package backweb.a02_object.z02_exp;

public class A05_MethodReturn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
### 5. 메서드(리턴값)
21. `Person` 클래스에 이름을 반환하는 `getName` 메서드를 추가하세요.
22. `Book` 클래스에 제목을 반환하는 `getTitle` 메서드를 만드세요.
23. `Car` 클래스에 연도를 반환하는 `getYear` 메서드를 작성하세요.
24. `Student` 클래스에 `id`를 반환하는 `getId` 메서드를 추가하세요.
25. `Product` 클래스에 가격을 반환하는 `getPrice` 메서드를 만드세요.
*/
		Person p01 = new Person();
		p01.name = "홍길동";
		System.out.println(p01.getName());
		String callName = p01.getName()+"님!! 안녕하세요..";
		System.out.println(callName);
		Book b1 = new Book();
		System.out.println(b1.getTitle());
		String callTitle = "도서명:"+b1.getTitle();
		System.out.println(callTitle);
		Car c1 = new Car();
		System.out.println(c1.getYear());
		Student st1 = new Student();
		st1.setId("himan");
		System.out.println(st1.getId());
		RandomGenerator r = new RandomGenerator();
		System.out.println("임의의 주사위 수:"+r.getDice());
		// ex1) 주사위 2번 던져 합을 출력히세요
		int dice01 = r.getDice();
		int dice02 = r.getDice();
		System.out.println("주사위1:"+dice01);
		System.out.println("주사위2:"+dice02);
		System.out.println("주사위 합산:"+(dice01+dice02));
		// ex2) 0~100점사이의 임의의 점수를 리턴하는 메서드는 선언하고 호출하세요.
		//-------------------------------
		System.out.println("임의의 점수:"+r.getRanPoint());
		// ex3) 홀/짝이 임의로 나오는 함수를 정의하고 리턴값을 출력하세요.
		System.out.println("홀짝 게임:"+r.game());
		
		Obj01 ob = new Obj01();
		ob.call(); // 리턴값이 없는 메서드..
		System.out.println(ob.call01());
		int num01 = ob.call02()+25; // 호출된 곳에서 할당 연산..
		System.out.println(num01);
		System.out.println(ob.call03()); // 지역변수리턴
		System.out.println(ob.call04()); // 전역변수리턴
		Calcu c = new Calcu();
		System.out.println(c.plus());
		c.setNum01(25);
		System.out.println(c.plus());
		Calcu c2 = new Calcu(50);
		System.out.println(c2.plus());
		
		TempSensor ts = new TempSensor();
		System.out.println("리턴값 출력:"+ts.getTemp());
		double retdata = ts.getTemp() +10;
		System.out.println("리턴된 데이터 합산해서 처리 :"+retdata);
		// ex1) Man 클래스 선언 필드 age=5로 설정  getAge()로 age 리턴 해당 메서드 호출..
		Man m1 = new Man();
		m1.age = 17;
		System.out.println("리턴값 출력:"+m1.getAge());
		int age2 = m1.getAge()+10;
		System.out.println("리턴 후 연산:"+age2);
	}
}
class Man{
	int age = 5;
	int getAge() {
		return age;
	}
}
class TempSensor{
	// 전역변수 선언
	double temp = 36.5;
	// 전역변수에 있는 데이터 리턴
	double getTemp() {
		return temp;
	}
}



//ex) Calcu    필드로 num01 
//기본생성자와 num01할당하는 생성자.
//메서드 void setNum01() 위 필드에 있는 num01할당 처리 메서드 정의
//메서드 int plus()로 설정하고 위 num01을 리턴하게 처리
//main()에서 객체 생성하고 호출하여 처리해보세요.
class Calcu{
	int num01;
	Calcu(){}
	Calcu(int num01){
		this.num01 = num01;
	}
	void setNum01(int num01) {
		System.out.println("저장하는 메서드");
		this.num01 = num01;
	}
	int plus() {
		System.out.println("리턴하는 메서드..!!");
		return num01;
	}
}

/*
# 메서드의 리턴값 
1. 메서드를 호출시 리턴되는 데이터를 말한다.
2. 선언형식
	타입  메서드명(){
		return 리턴데이터;
	}
3. 호출시
	객체.메소드명() : 이 메서드를 호출시 전달..
 * */
class Obj01{
	void call() {
		System.out.println("리턴하는 데이터가 없을 때");
	}
	String call01() {
		System.out.println("리턴하는 데이터가 문자열 일 때..");
		return "안녕";
	}
	int call02() {
		System.out.println("리턴하는 데이터가 숫자형 일 때");
		return 25;
	}
	int call03() {
		int no = 25;
		System.out.println("리턴하는 데이터가 숫자형(지역변수사용) 일 때");
		return no;
	}	
	String name="전역변수(문자열)";
	Obj01(){}
	Obj01(String name){
		this.name =name;
	}
	void setName(String name) {
		this.name = name;
	}
	// Obj01 ob = new Obj01();
	// ob.call04() : "전역변수(문자열)"
	// Obj01 ob1 = new Obj01("안녕하세요");
	// ob1.call04() : "안녕하세요"
	// ob1.setName("하이");
	// ob1.call04() : "하이"
	String call04() {
		System.out.println("리턴하는 데이터가 문자열형(전역변수-필드 사용) 일 때");
		return name;
	}	
	
}


class RandomGenerator{
	int getDice() {
		int diceNo = (int)(Math.random()*6+1);
		return diceNo;
	}
	int getRanPoint() {
		return (int)(Math.random()*101);
	}
	String game() {
		int idx = (int)(Math.random()*2);
		String result = "짝";
		if(idx==1) result = "홀";
		return result;
	}
}
class Car {
	int year;
	Car(){
		year=2024;
	}
    int getYear() {
        return year;
    }
}
class Student {
	String id;
	void setId(String id) {
		this.id = id;
	}
    String getId() {
        return id;
    }
}
class Product {
	double price;
    double getPrice() {
        return price;
    }
}
class Person {
	String name;
    String getName() {
        return name;
    }
}
class Book{
	String getTitle() {
		return "호모사피엔스(유발하라리)";
	}
}



