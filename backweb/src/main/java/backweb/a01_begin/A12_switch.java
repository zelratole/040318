package backweb.a01_begin;

public class A12_switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# switch구문
1. 기본 형식
	switch(데이터){
		case 데이터1:
			처리할 내용
			break;
		case 데이터2:
			처리할 내용
			break;
		case 데이터3:
			처리할 내용
			break;
		default:
			위 경우를 제외한 처리 내용..
	}
*/
		int month = 5;
		System.out.println("입력할 월:"+month+"월");
		switch(month) {
			case 1:
			case 2:
			case 11:
			case 12:
				System.out.println("겨울 입니다.");
				break;
			case 3:
			case 4:
			case 5:
				System.out.println("봄 입니다.");
				break;
			case 6:
			case 7:
			case 8:
				System.out.println("여름 입니다.");
				break;
			case 9:
			case 10:
				System.out.println("가을 입니다.");
			default:
				System.out.println("월의 입력범위는 숫자로 1~12입니다.");
		}
		
	}

}
