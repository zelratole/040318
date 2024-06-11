package backweb.a06_exception;

import java.io.IOException;

public class A02_CompileException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 컴파일예외
1. 필수적인 예외로 프로그램 자체 내에서 예외를 처리하지 않으면 에러가 발생하는 예외처리할 때,
	주로 사용된다.
2. 해당 코드 처리 ==> 에러발생 ==> 에러발생 클릭시, 자동으로 예외 코드 생성..	
 * */
		// 1. 클래스를 메모리 올리는 처리
		System.out.println("프로그램 시작");
		try {
			
			// 2. 에러 내용 확인 예외 처리 
			Class.forName("aa.bb");
			
		} catch (ClassNotFoundException e) {
			System.out.println("예외발생:"+e.getMessage());
			// TODO Auto-generated catch block
			//e.printStackTrace(); :에러가 발생한 경로 출력
		}
		System.out.println("프로그램 종료");
		
		// ex) 아래는 기본적으로 입력 발생하는 stream예외 예외 처리를 하세요..
		System.out.println("# stream 시작 #");
		try {
			System.in.read();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		System.out.println("# stream 종료 #");
		
		
		
	}

}
