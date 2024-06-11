package backweb.a06_exception;

public class A05_ThrowsException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
/*
# 예외 위임
1. 예외가 발생할 때, 두가지 형식으로 처리할 수 있다. 
 	첫번째는 바로 try{}catch문으로 예외를 바로 처리하는 경우와
 	두번째는 해당 처리 기능메서드에서 메서드명 옆에 throws 위임할예외1, 위임할예외2 형식으로
	예외를 위임한 후에 해당 메서드를 호출하는 곳에서 위임된 예외를 처리하는 경우를 말한다.
2. 예외 위임 기본 형식	
	public void 메서드명1() throws 예외1, 예외2{
		예외가 발생할 코드..
	}
	public void 메서드명2() throws 예외1, 예외2{
		예외가 발생할 코드..
	}

	호출하는 곳
	try{
		객체명.메서드명1()
		객체명.메서드명2()
	}catch(에외1...){
	
	}






 * */
}
