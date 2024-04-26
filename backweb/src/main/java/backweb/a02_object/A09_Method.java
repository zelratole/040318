package backweb.a02_object;

public class A09_Method {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# class/객체의 구성요소 메서드
1. 메서드는 객체에서 구성된 구성요소로서 객체가 가지고 있는 기능적인 역할을 하는 함수이다.
2. 함수란 특정한 기능을 처리하고 그 결과값을 리턴하는 것으로 객체에 종속이 되면 메서드라고 한다.
3. 메서드의 핵심기능
	1) 메서드는 매개변수로 데이터를 받아서, 필드(객체의 전역변수)에 저장하기도 하고,
	필드에 있는 내용을 호출하여 활용하기도 하고, 이 메시드를 통해서 전달하는 데이터를
	만들기도(리턴) 한다.
4. 기본형식
	리턴타입  메서드명(매개변수){
		프로세스 처리
		return 리턴데이터;
	}
	1) 리턴타입 : 자바에서는 이 메서드를 통해서 리턴하는 데이터의 유형을 사전에
		선언하고, 그 유형에 맞는 데이터를 리턴하여야 한다.
		void call(){
		
		}
		그러나, 리턴할 데이터가 없는 메서드의 경우 void라고 선언한다.
		String call02(){
			return "홍길동(문자열)리턴"
		}
		int call03(){
			return 25; // 숫자 리턴.
		}
		double call04(){
			return 3.14; // 실수 리턴
		}
		int[] call05(){
			return {200,300,400} // 정수형 배열 리턴..
		} 
		
		String call06(){ // 에러발생..
			return 25; 
		}
	
*/
		Object01 b01 = new Object01();
//		System.out.println(b01.call()); 에러 리턴할 데이터 없기에 에러발생
		String str = b01.call01();
		System.out.println( b01.call02() ); // 리턴 유형이 문자열이기 출력이 가능하다.
		int num01 = b01.call02();
		int num02 = b01.call02()+3;
		// 리턴유형과 실제 리턴할 데이터가 숫자형이기 연산이 가능하다.
		
	}
}
// ex) class AutoSelling 자동판매기로 
//     기능메서드로 void, String, int, double, boolean으로 리턴 유형을 선언하고
//     임의로 리턴값을 넣은 후, main()에서 호출하세요..
//
class Object01{
	void call() {
		System.out.println("리턴유형 없음");
	}
	String call01() {
		// 리턴유형 문자열
		return "홍길동";
	}
	int call02() {
		return 25;// 리턴유형 정수형
	}
	String call03() {
//		return 25;// 리턴유형이 맞지 않음으로 에러발생
		return "25";// 리턴유형이 맞아야 함..
	}
	
}



