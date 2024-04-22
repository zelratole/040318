package backweb.a01_begin.y01_util;

public class A03_ChangInputType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("# 입력 데이터 유형 변환 처리#");
		String pname = args[0];
		// 숫자형 문자열을 숫자로 변환
		int price = Integer.parseInt(args[1]);
		int cnt = Integer.parseInt(args[2]);
		int tot = price*cnt;
		System.out.println("물건명:"+pname);
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		System.out.println("총비용:"+tot);
		/*
		ex) A04_InputCalcu.java
			 arguments에 영화명 관람자수 티켓가격 할인율(%)
			 입력받아서 최종비용을 출력하세요 
		*/
		
		
		
		
		
		
	}

}
