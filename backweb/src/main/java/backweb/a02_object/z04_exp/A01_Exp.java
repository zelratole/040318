package backweb.a02_object.z04_exp;

public class A01_Exp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
/*
### 7. 생성자 + 메서드(매개변수+프로세스처리+리턴값)
31. `Person` 클래스에 나이와 연도를 매개변수로 받아 특정 연도의 나이를 계산하고 반환하는 메서드를 만드세요.
      생성자: 이름(name), 나이(age)
      메서드 : 매개변수 - 현재연도(currentYear), future_Year(대상연도)
             리턴값 - 대상연도의 나이 리턴(age+future_Year-currentYear);
      홍길동 0
      
      getTargetYear(2024, 2034){
      	   return 0 + 2034- 2024 ==> 10살..(초기값에서 연도를 계산하여 장래의 나이를 처리해주는 함수 처리)
      }
             
             
             
32. `Book` 클래스에 현재 페이지와 읽은 페이지 수를 매개변수로 받아 남은 페이지 수를 계산하고 반환하는 메서드를 추가하세요.
		생성자(도서명, 전체페이지수, 현재페이지수)
		readPageCurPage(읽은페이지수)
		    현재페이지수  += 읽은페이지수
			return 현재페이지수
		restPage(){
			return 전체페이지수- 현재페이지수
		}	
33. `Car` 클래스에 기름을 매개변수로 받아 남은 주행 가능 거리를 계산하고 반환하는 메서드를 작성하세요.
		Car 필드 : 차량명, 리트당주행거리, 현주유량
			생성자 : 차량명, 리트당주행거리
			메서드 : 주유주입(주유량),  남은 주행 가능 거리()
			
34. `Student` 클래스에 현재 점수와 추가 점수를 매개변수로 받아 총점을 계산하고 반환하는 메서드를 추가하세요.
35. `Product` 클래스에 할인율을 매개변수로 받아 할인된 가격을 계산하고 반환하는 메서드를 작성하세요.

*/
		Person p01 = new Person("홍길동", 25);
		int futureAge= p01.getFutureAge(2024, 2035);
		System.out.println("미래 나이:"+futureAge);
		Book b1 = new Book("자바기초", 400);
		b1.readPageCurpage(50);
		b1.readPageCurpage(30);
		int curPage = b1.readPageCurpage(40);
		System.out.println("현재 페이지 번호:"+curPage);
		System.out.println("남은 페이지 수:"+b1.restPage());
		Car c1 = new Car("그랜저", 12.5);
		c1.addFuel(50);
		c1.addFuel(50);
		System.out.println("이동할 수 있는 거리:"+c1.remainDistance()+"km");
	}
}
class Car{
	String name;
	double fuelEff;  // 차량연비(km/l) : 리트당 주행거리
	int fuel;
	Car(String name, double fuelEff){
		this.name = name;
		this.fuelEff = fuelEff;
		System.out.println("#차량 출고#");
		System.out.println("차량명:"+name);
		System.out.println("연비:"+fuelEff+"km/l");
	}
	void addFuel(int fuel) {
		this.fuel +=fuel;
		System.out.println("차량에 주유 주입:"+fuel+"l");
		System.out.println("현재 주유량:"+this.fuel);
	}
	int remainDistance() {
		return (int)(fuel*fuelEff);
	}
	
}


class Book{
	String title;
	int totPage;
	int curPage;
	// 제목과 전체 페이지 수 설정..
	Book(String title, int totPage){
		this.title = title;
		this.totPage = totPage;
		// curPage = 0  : 기본적으로 객체경우 default값이 설정이된다.
	}
	int readPageCurpage(int readPage) {
		System.out.println("# 도서명:"+title);
		System.out.println("읽은 페이지 수:"+readPage);
		curPage += readPage;
		return curPage;
	}
	int restPage() {
		System.out.println("# 도서명:"+title);
		System.out.println("전체 페이지 수:"+totPage);
		System.out.println("현재 읽은 페이지수 :"+curPage);
		
		return totPage-curPage;
	}
}


class Person{
	String name;
	int age;
	Person(String name, int age){
		this.name = name;
		this.age = age;
	}
	int getFutureAge(int currentYear, int futureYear) {
		System.out.println("# "+name+"님의 현재 정보");
		System.out.println("현재 나이:"+age);
		System.out.println("현재 연도:"+currentYear);
		System.out.println("확인할 미래 연도:"+futureYear);
		return age + futureYear-currentYear;
	}
}

