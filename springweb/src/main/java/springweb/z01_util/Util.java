package springweb.z01_util;

import java.util.ArrayList;
import java.util.List;

public class Util {
	public static void main(String[] args) {
		System.out.println("임시비번:"+Util.mkTPwd());
	}
	public static String mkTPwd() {
		List<Character> clist = new ArrayList<Character>();
		for(int cnt=48;cnt<=122;cnt++) {
			//System.out.println(cnt+"-"+(char)cnt);
			if( cnt>=48 && cnt<=57 ) {
				clist.add((char)cnt);
			}
			if( cnt>=65 && cnt<=90 ) {
				clist.add((char)cnt);
			}
			if( cnt>=97 && cnt<=122 ) {
				clist.add((char)cnt);
			}
		}
		char[] cArr = new char[8];
		for(int idx=0;idx<cArr.length;idx++) {
			cArr[idx]=clist.get((int)(Math.random()*clist.size()));
		}
		String tmpPass = new String(cArr);
		return tmpPass;
	}
	
}
