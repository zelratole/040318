package backweb.a07_api;

public class A04_StringBuffer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# StringBuffer
1. String의 데이터를 추가할 때마다, heap영역에 새로운 메모리를 만든다.
	
 * */
		String name="홍길동";
		System.out.println("초기 heap영역:"+name.hashCode());
		for(int idx=0;idx<100;idx++) {
			System.out.print(idx+1+"번째 ");
			name+=idx;
			System.out.println(":heap영역:"+name.hashCode());
		}
		System.out.println("최종 문자열:"+name);
		StringBuffer sbf = new StringBuffer("홍길동");
		System.out.println("초기 StringBuffer heap영역:"+sbf.hashCode());
		for(int idx=0;idx<100;idx++) {
			System.out.print(idx+1+"번째 ");
			sbf.append(idx);
			System.out.println("heap영역:"+sbf.hashCode());
		}		
		System.out.println("최종 문자열:"+sbf);
	}

}
