package backweb.a06_exception;

public class A04_UserException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 사용자 정의 예외 처리
1. 개발자가 직접적으로 사용할 예외처리클래스를 선언하여,
2. 필요한 경우, 
	1) 조건문이나 프로세스 처리 라인에 의해
	throw new 사용자정의클래스() 형태로 예뢰를 처리하는 것을 말한다.
	2) 메서드() throws 사용자정의클래스
3. 기본 형식
	class 클래스명 extends Exception{
		생성자 선언
		super("문자열데이터") : 상위 생성자중에 문자열을 입력받는 생성자를 호출하여 데이터를 전송
		
		// 재정의
		public String getMessage(){ // 재정의 메서드..
			super.getMessage() : 상위에 입력한 내용을 가져온다.
		
		}
		// 추가할 내용..
	}
	main() 호출 시..// 다른 클래스에서 기능 메서드에 처리..
	try{
	
		if(조건)
			throw new 사용자정의클래스()
	}catch(사용자정의예외 e1){
		e.getMessage() 처리할 내용
	}	
*/
		
		for(int cnt=1;cnt<=10;cnt++) {
			try {
				if(cnt%3==0) {
					throw new User01Exception("3의 배수 예외 발생");
				}	
				System.out.println("카운트:"+cnt);
			}catch(User01Exception ue) {
			
				System.out.println("예외 발생:"+ue.getMessage());
				ue.call();
			}
		}
	}
}
class User01Exception extends Exception{

	public User01Exception() {
		super("기본 사용자 예외 처리!!");
	}
	public User01Exception(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub  생성자로 넘긴 문자열 "기본 사용자 예외 처리!!" super(message);
		//                                  getMessage()로 가져올 수 있다..
		return "사용자정의 예외 메시지:"+super.getMessage();
	}
	// 추가할 메서드..
	public void call() {
		System.out.println("기능 메서드 추가 처리 ^^");
	}
	
}




