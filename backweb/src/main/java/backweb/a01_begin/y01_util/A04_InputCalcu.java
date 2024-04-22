package backweb.a01_begin.y01_util;

public class A04_InputCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		ex) A04_InputCalcu.java
			 arguments에 영화명 관람자수 티켓가격 할인율(%)
			 입력받아서 최종비용을 출력하세요 
		*/
		System.out.println("# 영화 관람 #");
		String movie = args[0];
		int cnt =   Integer.parseInt( args[1]);
		int pay =   Integer.parseInt( args[2]);
		int disRatio =   Integer.parseInt( args[3]);
		int tot = pay*cnt;
		// 전체총비용 = 총비용 - (총비용*할인율)
		int restTot = tot - (tot*disRatio/100);
		System.out.println("영화명:"+movie);
		System.out.println("관람자수:"+cnt);
		System.out.println("티켓가격:"+pay);
		System.out.println("총비용:"+tot);		
		System.out.println("할인율:"+disRatio+"%");
		System.out.println("최종비용:"+restTot);
		
	}

}
