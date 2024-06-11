package backweb.a07_api;

public class A02_StringConstructor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int cnt=1;cnt<=256;cnt++) {
			System.out.println(cnt+":"+(char)cnt);
		}
		// (int)(Math.random()*경우의수 + 시작수)
		// 1~6  : (int)(Math.random()*6 + 1)
		// 1~3  : (int)(Math.random()*3 + 1)
		// 알파벳26자 램덤 코드 범위  : (int)(Math.random()*26 + 97)
		// 문자열 생성자 활용
		
		String str1 = new String(new byte[] {65,67,68,69});
		System.out.println(str1);
		String str2 = new String(new char[] {'H','e','l','l','o'});
		System.out.println(str2);
		// 대문자 65~90 범위로 8자리 임시비번호 임의로 생성
		byte[] rBytes = new byte[8];
		for(int idx=0;idx<8;idx++) {
			rBytes[idx] = (byte)( Math.random()*26+65 );
			System.out.print(rBytes[idx]+",");
		}
		System.out.println();
		String tmpPass = new String(rBytes);
		System.out.println("임시비밀번호:"+tmpPass);
		//ex) 알파벳 소문자 범위를 찾아서 4자리의 임시비밀번호를 임의로 생성하세요..
		byte[] rBytes2 = new byte[4];
		for(int idx=0;idx<4;idx++) {
			rBytes2[idx] = (byte)(Math.random()*26 + 97);
		}
		System.out.println("임시비번(소문자4자리):"+new String(rBytes2));
	}

}
