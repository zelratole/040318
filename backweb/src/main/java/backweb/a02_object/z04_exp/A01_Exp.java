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
33. `Car` 클래스에 기름을 매개변수로 받아 남은 주행 가능 거리를 계산하고 반환하는 메서드를 작성하세요.
34. `Student` 클래스에 현재 점수와 추가 점수를 매개변수로 받아 총점을 계산하고 반환하는 메서드를 추가하세요.
35. `Product` 클래스에 할인율을 매개변수로 받아 할인된 가격을 계산하고 반환하는 메서드를 작성하세요.

*/
		Person p01 = new Person("홍길동", 25);
		int futureAge= p01.getFutureAge(2024, 2035);
		System.out.println("미래 나이:"+futureAge);
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

