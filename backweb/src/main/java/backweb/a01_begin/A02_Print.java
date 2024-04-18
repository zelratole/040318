package backweb.a01_begin;

public class A02_Print {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
1. 출력 처리의 여러가지 형식
	1) 자바는 기본적으로 System.out.println("출력문자열");
		명령을 통해서 줄바꿈과 함께 문자열을 출력한다.
		sysout+ctrl+space : 자동 출력문 생성
 * */
		System.out.println("안녕하세요");
		// ctrl+alt+화살표아래 : 줄복사
		System.out.println("안녕하세요");
		System.out.println("안녕하세요");
// 2) 줄바꾸지 않는 출력 : System.out.print()
		System.out.print("홍길동,");
		System.out.print("김길동,");
		System.out.print("신길동");
		System.out.println();
/*
ex) 위 println()과 print()를 활용해서 아래와 같이 출력하세요
국어 70
영어 80
수학 90
 */
		System.out.print("국어 ");
		System.out.println(70);
		System.out.print("영어 ");
		System.out.println(80);
		System.out.print("수학 ");
		System.out.println(90);		
		
	}

}
