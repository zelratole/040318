package backweb.a06_exception;

public class A01_Begin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바의 예외 처리
1. 프로그램 실행 중 발생할 수 있는 예외 상활을 처리하여 프로그램이 중단되지 않고 정상적으로
	실행될 수 있도록 하는 기능입니다. 예외는 주로 오류 상황을 나타내며, 이를 적절히
	처리하지 않으면 프로그램이 비정상 종료될 수 있습니다.
2. 예외의 기본 형식
	try{
		예외가 발생할 가능성이 있는 코드
	}catch(Exception e){
		예외가 발생했을 때, 처리할 내용
	}finally{
		예외의 발생과 상관없이 처리할 내용.
	}
3. 예외의 종류
	1) runtime exception : 실행시, 코드의 결과에 따라서 발생하는 예외를 말한다.
		프로그램상에 예외를 처리하지 않더라도 에러가 발생하지 않지만, 실행이 중단되어
		예외에 대한 처리를 할 필요성이 있는 경우 처리한다.
	2) compile exception : 프로그램상 예외의 가망성이 높은 코드일 경우, 
		자체내에서 예외를 처리해야 에러를 발생시키지 않게 처리하는 경우를 말한다.
		주로 메모리 설정, io(input/out일어나는 경우), DB(데이터베이스 접속 처리)
		등을 반드시 예외를 처리하여야 한다.
4. 예외 처리 방법
	1) 실행 예외 : 실행했을 때, 예외가 발생할 내용을 강제로 수행하여, 예외 코드를 확인 후
		catch블럭에 처리한다.
	2) 컴파일 예외 : 바로 처리해야 코드 에러가 없기에 eclipse 툴등에서 자동을 생성을 지원하고
		있다..
		
 * */
		// 실행예외:
		// 1. 예외가 발생할 코드를 만들어 수행 한다.
		System.out.println("시작");
		try {
			System.out.println("예외발생코드:"+(2/0));
		}catch(ArithmeticException e) {
			System.out.println("예외발생시 에러 잡기:"+e.getMessage());
		}
		System.out.println("종료");
		// 2. 예외내용을 복사 : ArithmeticException
		// 3. try{}catch 블럭 안에 처리
		// 4. catch 블럭에 예외 발생시 처리할 내용 기술: e.getMessage()
		
		// ex) 아래 내용을 예외 처리해보세요..
		System.out.println("시작!!");
		try {
			String str=null;
			System.out.println(str.toString());
			// 특정한 문자열이 heap영역에 메모리가 할당되지 않는 상태에서 객체의 구성요소를
			// 호출할 때, 발생하는 예외 내용..
		}catch(NullPointerException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("종료!!");
		/*
# 실행 에러의 종류
1. ArrayIndexOutOfBoundsException
	배열의 크기를 초과해서 호출 할 때, 주로 발생하는 예외
2. NumberFormatException
	숫자형 문자열을 숫자로 변환시킬 때, 숫자형 문자열이 아닌 경우에 발생하는 예외
==> 실행시, 나오는 예외를 확인하여, 해당 내용을 복사해서 원치하는 결과를 벗어나서 프로그램을
	안정적으로 처리할 때, 주로 사용된다.
	
		 * */
		
		
	}

}
