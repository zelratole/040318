package backweb.a01_begin.y01_util;

public class A01_InputData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 데이터 입력 처리
1. String args[]  배열을 통한 입력
	자바는 해당 파일이 실제로 console로 처리되는 경우 다음과 같은 과정을 거친다.
	A01.java(main()메서드 포함) 
	javac A01.java : (컴파일 즉, 사람이 만든 언어를 기계가 인식하는 코드로 변환)
		위 과정을 통해 A01.class 라는 파일이 생성이 된다.
	java A01  : 이 명령어를 통해서 A01.class 파일이 호출되어 수행되어 진다.
		결과내용으로 main()메서드에 포함된 코드가 수행된다.
	이때..
	java A01 사과 바나나 딸기 
		라는 명령어를 처리하면 해당 class 파일 옆에 있는 사과 바나나 딸기
		main(String [] args)에 배열로 할당되어 실제
			매개변수로 다음과 같은 효과가 일어 난다.
			String[] args = {"사과","바나나","딸기"}
		그래서, java에서 수행하는 배열로 할당이 되어
			args[0] : 사과
			args[1] : 바나나
			args[2] : 딸기
			와 같이 할당되어 이 것을 main() 메서드 {} 코드 블럭안에서 외부데이터
			입력으로 사용할 수 있다.
	==> eclispe 툴은 위 컴파일 과정을 저장할 때, 처리하고, ctrl+f11에 의해 실행
	할 때, java @@@ 로 클래스 파일을 실행 시킨다. 그럼, 위와 같이 매개변수로 데이터
	가 있는 것은?
			

2. Scanner 객체를 통한 입력
 * */
	
		
		String fruit1 = args[0];
		String fruit2 = args[1];
		String fruit3 = args[2];
		System.out.println(fruit1);
		System.out.println(fruit2);
		System.out.println(fruit3);
		// ex) A02_InputData.java 
		//     arguments옵션에  이름 나이 사는곳 입력해서 출력하세요.
// 10:05~아		
		
		
	}

}
