package backweb.a06_exception;

public class A03_MultiException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 다중 예외 처리
1. 특정 코드 블럭의 경우에는 여러 개의 예외가 발생할 경우가 있다.
2. 이 때, 사용하는 것이 다중예외 처리이다.
3. 다중예외 처리 기본 형식
	try{
		여러가지 예외가 발생할 가망성이 있는 코드..
	}catch(예외클래스1){
	
	}catch(예외클래스2){
	
	}catch(예외클래스3){
	
	}
	1) 예외클래스를 나열해서 처리해주고 혜당 예외가 발생했을 때, 예외 클래스로 던져준다.
	2) 일반적으로 예외는 가장 하위 예외(상속기준으로 가장 계층적으로 밑에 있는 클래스) 부터 
		먼저 처리하고,
	3) 가장 상위예외 클래스를 마지막에 처리해준다. - 효율적을 메모리 관리를 위하여..
		ex) Exception이 최상위 예외 클래스..
		같은 레벨의 예외 클래스는 순서에 크게 상관없이 처리한다.
		
 * */
		String name = null;
		System.out.println("시작");
		try {
			// 예외는 발생할 시, 바로 catch 블럭에 던져지기에 아래 코드는 수행되지 않는다.
			System.out.println(name.toString());
			
			System.out.println(args[0]);
			System.out.println(1/0);
		}catch(NullPointerException e) {
			System.out.println("예외1:"+e.getMessage());
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("예외2:"+e.getMessage());
		}catch(ArithmeticException e) {
			System.out.println("예외3:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("예외4:"+e.getMessage());
		}
		System.out.println("종료");
		// NullPointerException
		// ArrayIndexOutOfBoundsException
		// ArithmeticException
	}

}
