package backweb.z02_exam;

public class A0418 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
// # 특정 조건에 맞는 클래스의 메서드 메서드.
// 1. 접근제어자/리턴값/메서드명/매개변수 유형.
class Person{
	public String call() {
		return "안녕하세요";
	}
}
// # 객체의 속성/메서드를 사용할려는 전제조건 : 객체가 생성.
// Woman w1 = new Woman();
// Woman w2 = null;
// w1.show();  // 가능
// w2.show();  // 에러발생

class Woman{
	void show() {}
}
// # UML 다이어그램 그리기
// 1. staruml 설치
// 2. class 다이어그램 그리기..

/*
2.1
String id = "human01";
#id.chatAt()
for(int idx=0;idx<id.length();idx++){
	System.out.println(id.chatAt(idx));
}
 * */
//2.2
//
//1) 각 구성요소에 대한 분명한 속성 확인
// # 문자열 구성요소 코드 확인 메서드
// # 문자열 입력받아 길이 반환하는 공통 메서드
class String01{
	public int retLength(String str) {
		
			return str.length();
	}
}
/*
2.3
Memo newMemo= null; // 객체가 생성되지 않음. nullpointerexception 발생..
newMemo = new Memo()/  // 객체 생성..


3.2

Memo m1 = new Memo();
Memo m2 = m1;
System.out.println(m1 == m2); 주소값으로 객체가 같은지 여부를 확인할 수 있다.

 * */


// 3.2 
// # 객체는 데이터를 입력할 때, 객체를 생성 후, setXXX메서드를 통해 입력 가능..
// Woman w = null;
// w.setName("홍길동")   ==> 위 내용에서 빠진 부분 Woman w = new Woman();
// # class에서 외부에서 호출시 특정한 구성요소를 접근 하지 못 하게 처리할 때.
// 위 String01 클래스의 retLength()를 호출시 접근 하지 못 하게 할때 public ==> private로 변경
// # 클래스 적용과 String 문자열 길이 가져오기 length() 활용..
class Person01{
	String name="홍길동";
	
}
// 위 객체에서 Person01 객체의 name 의 길이를 가져오고자 할 때 : p01.name.length()
// # 위 Person01을 통해 만들어 진 객체가 같은 객체인지 여부
//    Person01 p01 = new Person01();
//    Person01 p02 = p01;
//    p01 == p02 : 확인1
//    p01.name="신길동" 할당 후, p02.name로 "실길동"일 때,
// # 변수명 자료형 참조객체의 의미
//    1. 변수명 : name, age, loc
//    2. 자료형 : String, int, String,
//    3. 이 내용에서 참조할 객체 : Person02 p01;  Person02 p02;
class Person02{
	String name;
	int age;
	String loc;
}






