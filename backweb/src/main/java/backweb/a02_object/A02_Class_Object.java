package backweb.a02_object;

public class A02_Class_Object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 어떤 유형의 객체를 사용하는 지를 선언.
		// 특정 위치(heap)에 객체를 생성하지 않은 단계 
		// stack에는 type지정하고 할당을 하지 않는 상황..
		LotterTower seoul;
//		System.out.println(seoul); 초기화가 안 되었기 때문에 컴파일 조차되지 않는다.
		seoul =null; // 객체의 초기화 할당은 하지 않고, 사용하겠습니다.
		// ex) 건물로 비유하자면 부지만 확보하고 건물이 지어지지 않는 상황..
		System.out.println(seoul);
//		System.out.println(p01.personCnt); 
//		객체가 heap영역에 생성되지 않았기에 속성을 호출하면 실행에러 발생한다.
		seoul = new LotterTower();
//		드디어 특정한 heap영역에 위치를 지정하고, 그 위치 이름을 seoul(참조변수)
//		로 하고 객체가 할당되었고, 그 주소값은 seoul을 호출할 때 확인할 수 있다.
		System.out.println(seoul);
		// backweb.a02_object.LotterTower@6504e3b2
		// 패키지명.클래스명@16진수로 heap영역의 주소
		//ex) pusan도 참조변수를 위와 같이 만들고 그 주소까지 출력해주요..
		seoul.personCnt = 50;
		seoul.personCnt += 50;
		seoul.personCnt += 50;
		seoul.personCnt += 50;
		seoul.loc="서울 잠실";
		LotterTower pusan = new LotterTower();
		pusan.personCnt = 30;
		pusan.personCnt += 30;
		pusan.loc="부산 해운대";
		System.out.println("서울 롯데 월드 타워 현재 수용인원:"+seoul.personCnt);
		System.out.println("부산 롯데 월드 타워 현재 수용인원:"+pusan.personCnt);
		seoul.show();
		pusan.show();
		pusan.show();
		pusan.show();
		Product pro01;
		pro01 = null;
		pro01 = new Product();
		Product pro02 = new Product();
		Product pro03 = new Product();
		pro01.name="사과"; pro01.price = 3000;
		pro02.name="바나나"; pro02.price = 4000;
		pro03.name="딸기"; pro03.price = 15000;
		System.out.println("첫번째 물건명 "+pro01.name+", 가격 "+
							pro01.price);
		System.out.println("두번째 물건명 "+pro02.name+", 가격 "+pro02.price);
		System.out.println("세번째 물건명 "+pro03.name+", 가격 "+pro03.price);
	}
}
class Product{
	// 속성
	String name;
	int price;
	// 기능메서드 리턴유형 void, String, int 식으로 선언하고 return
}

// class는 도면이다 객체를 만들기 위한 틀역할..
class LotterTower{
	String loc;
	int personCnt; // 수용인원
	// void : 리턴할 값이 없을 때 자바에서는 반드시 선언
	// 기능 함수
	void show() {
		// 수용인원을 출력해주는 기능 메서드..
		System.out.println(loc+" 롯데 월드 타워의 수용인원:"+personCnt);
		
	}
}
