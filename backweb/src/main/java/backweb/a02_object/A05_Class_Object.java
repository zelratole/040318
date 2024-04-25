package backweb.a02_object;

public class A05_Class_Object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
		# 객체 지향 프로그래밍
		1. OOP:Object Oriented Programming
			- 부품 객체를 먼저 만들고 이것을 하나씩
			조립해 완성된 프로그램을 만드는 기법
		2. 객체란?
			1) 물리적으로 존재하는 것 - 자동차, 책, 사람
			2) 추상적인 것(회사, 날짜) 중에서 자신의 속성과
				동작을 가지는 모든 것
			3) 객체는 필드(속성)과 메소드(동작)으로 구성된
				자바 객체로 모델링 가능한 것.
				- 현실세계
					사람
					    -[속성] : 이름, 나이
						-[동작] : 웃다, 먹다, 말하다
				- 자바세계
					사람객체 
						-[필드] : 이름, 나이
						-[메서드] : 웃다, 먹다, 말하다. 
		3. 객체의 상호 작용
			- 객체들은 서로 간의 기능(동작)을 이용해서 데이터를 주고 받고 기능을 처리한다.
			사람 객체 <==> 전자 계산기 객체
			물건 객체 <==> 쇼핑몰 객체		
		# 객체와 클래스
		1. 현실세계 비유
			현실세계 : 설계도 ==> 구체적인 사물/객체
				ex) 롯데월드타워의 설계도를 통해서 롯데월드타워 생성
			자바 : 클래스 ==> 객체
				ex) class Tower{} ==> Tower t1 = new Tower();		
		2. 클래스에서 객체를 생성하기 위한 필드와 메소드가 정의
		3. 클래스부터 만들어진 객체를 해당 클래스의 인스턴스(instance)
			instance : 참조 - heap영역의 주소를 참조해서
			변수를 만들기 때문에 사용된다.
				ex) 하나의 클래스를 기준으로 여러 개의 객체가 생성 
				Person p01 = new Person();
				Person p02 = new Person();
				Person p03 = new Person();
				p01, p02, p03 등 다른 주소로 객체 생성이 된다.		
		4. 하나의 클래스로부터 여러 개의 인스턴스를 만들 수 있다.
			하나의 롯데월드타워 도면으로부터 서울, 부산,제주도에
			실제 건물을 건축할 수 있다.
			아래 Book클래스를 통해 b1, b2, b3의 여러 객체를 생성하여
			이름을 할당.		
 * */
		Bus b1 = new Bus();
		Bus b2 = new Bus();
		Bus b3 = new Bus();
		b1.no = 3;
		b2.no = 5;
		b3.no = 9;
		System.out.println(b1+":"+b1.no);
		System.out.println(b2+":"+b2.no);
		System.out.println(b3+":"+b3.no);
		// ex) Member 클래스 선언 속성으로 id선언 후, 위와 같이 각각의
		// 객체에 id를 할당 후, 출력해보세요..
		Member m01 = new Member();
		Member m02 = new Member();
		Member m03 = new Member();
		m01.id="himan";m02.id="goodMan";m03.id="higirl";
		m01.name="홍길동";m02.name="김길동";m03.name="신길동";
		m01.age=25;m02.age=22;m03.age=23;
		System.out.println(m01.id+":"+m01.name+":"+m01.age);
		System.out.println(m02.id+":"+m02.name+":"+m02.age);
		System.out.println(m03.id+":"+m03.name+":"+m03.age);
	}
}
class Member{
	String id;
	String name;
	int age;
}
class Bus{
	int no;
}



