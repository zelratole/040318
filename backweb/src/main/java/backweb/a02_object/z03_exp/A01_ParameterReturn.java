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
		Book b1 = new Book();
		b1.readPage(10);
		b1.readPage(10);
		b1.readPage(10);
		int tot = b1.readPage(10);
		System.out.println("b1 : 전체 읽은 페이지 수:"+tot);
		Book b2 = new Book();
		b2.readPage(5);
		b2.readPage(5);
		b2.readPage(5);
		System.out.println("b2 : 전체 읽은 페이지 수:"+b2.readPage(3));
		Car car1 = new Car();
		car1.goRoad(5);
		car1.goRoad(3);
		car1.goRoad(7);
		int totDist = car1.goRoad(8);
		System.out.println("총 이동 거리:"+totDist+"km");
		Student st1 = new Student("홍길동");
		st1.inputPointRetAvg(70);
		st1.inputPointRetAvg(80);
		int avg = st1.inputPointRetAvg(90);
		System.out.println("###지금까지 평균:"+avg);
		Student st2 = new Student("마길동");
		st2.inputPointRetAvg(80);
		st2.inputPointRetAvg(80);
		int avg2 = st2.inputPointRetAvg(92);
		System.out.println("###지금까지 평균:"+avg2);		
	}
}
class Student{
	int totalScore; // 전체 점수
	int totalSubjects;// 입력 받은 과목수
	String name;
	Student(String name){
		this.name = name;
	}
	int inputPointRetAvg(int point) {
		System.out.println("# 학생명:"+name);
		System.out.println("입력 받은 과목수:"+(++totalSubjects));
		System.out.println("입력 받은 점수:"+point);
		totalScore+=point;
		return totalScore/totalSubjects;
	}
}


class Car{
	int mileage;
	int goRoad(int distance) {
		System.out.println("이번 주행 거리:"+distance+"km");
		mileage+=distance;
		return mileage;
	}
	
}
class Book{
	int totReadPage;
	int readPage(int page) {
		System.out.println("현재 읽은 페이지:"+page);
		totReadPage+=page;
		// 메서드를 통해서 읽은 페이지를 전달하고,
		// 전역변수(필드)를 통해서 누적되는 전첵 읽은 페이지 수를 리턴 처리..
		
		return totReadPage;
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

28. `Car` 클래스에 주행 거리(mileage)를 매개변수로 받아 총 주행 거리를 업데이트하고 반환하는 메서드를 만드세요.

29. `Student` 클래스에 점수를 매개변수로 받아 평균 점수를 계산하고 반환하는 메서드를 추가하세요.
		 누적되는 변수(totalSubjects-전체과목수), 전체점수(totalScorce) 
30. `Product` 클래스에판매 수량을 매개변수로 받아 총 판매량을 업데이트하고 반환하는 메서드를 작성하세요.
 
Product p01 = new Product("사과");
p01.inputPayRetTot(1000); 
p01.inputPayRetTot(2000); 
int tot = p01.inputPayRetTot(3000);
System.out.println("총판매금액:"+tot);
 * */
class Product{
	int totSelling;
	String name;
	Product(String name){
		this.name = name;
	}
	int inputPayRetTot(int pay) {
		System.out.print(name);
		System.out.println("이번에 판매한 금액:"+pay);
		totSelling+=pay;
		return totSelling;
	}
	
}


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


