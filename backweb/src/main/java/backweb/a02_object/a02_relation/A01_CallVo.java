package backweb.a02_object.a02_relation;

import backweb.a02_object.a02_relation.vo.Car;
import backweb.a02_object.a02_relation.vo.Computer;
import backweb.a02_object.a02_relation.vo.Engine;
import backweb.a02_object.a02_relation.vo.IDCard;
import backweb.a02_object.a02_relation.vo.Monitor;
import backweb.a02_object.a02_relation.vo.Student;

public class A01_CallVo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 1:1관계로 설정된 클래스에서 생성되는 객체
1. 객체는 혼자 독립적으로 선언하여 사용되는 경우도 있지만, 대부분 관계로 설정되어
	활용하는 경우가 많다.
2. 예를 들어 사용자와 사용자의 상세정보, 자동차와 엔진, 학생과 학생 id 카드
	의사와 의료 자격증 등 우리 주위에는 이렇게 관계로 설정된 경우가 많다.
3. 그 1단계로 1:1관계로 설정된 클래스를 구성하고, 그 클래스에 의해 만들어지는
	객체를 생성해보자.
4. 1:1관계 설정 순서
	1) 포함되는 클래스 선언.
		우선 포함하는 클래스보다 포함되는 클래스를 먼저 선언하고,
	2) 포함하는 클래스 선언
		포함하는 클래스에서 포함되는 클래스의 객체를 필드를 선언하여,
		1:1관게를 설정한다.
5. 예제 내용
	1) 자동차와 엔진과의 1:1관계 설정
	2) 엔진클래스의 속성으로 마력을 선언하는 클래스를 선언하여,
		필드, 생성자, get/set메서드 선언한다.
	3) 자동차클래스를 선언하고 자동차의 모델명과 위 선언된 엔진클래스를
		선언한다.
	4) 생성자를 통해서 자동차의 모델명과 엔진클래스를 할당하고,
		set/get메서드를 선언하낟.
	5) 추가 메서드로 info()를 통해 자동차의 모델명과 엔진을 정보를
		가져와서 출력한다.
	6) main()에서 실제 객체를 생성하고, 처리내용 확인..
		
 * */
		Engine en01 = new Engine(125);
		Car c1 = new Car("산타페", en01);
		c1.showInfo();
		// ex) IDCard(cardNumber카드번호) 
		//     Student(name이름, IDCard, showInfo()를 통해 정보 출력)
		//     클래스를 backweb.a02_object.a02_relation.vo 안에 선언하고
		// 	  호출하세요
		Student st = new Student("김영희", new IDCard("3422IS555"));
		st.showInfo();
		// ex) 컴퓨터(Computer-Monitor, 모델명(model) - showInfo()컴퓨터정보와 모니터 해상도 출력) 
		//     와 모니터(Monitor-해상도 resolution)
		Computer computer = new Computer("삼성워크스테이션", new Monitor("1920x1080"));
		computer.showInfo();

	}

}