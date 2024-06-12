package backweb.a07_api;

public class A03_StringMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# String에서 활용되는 메서드.
1. charAt(int idx) : 특정위치의 문자 리턴..
2. getBytes() : 해당 문자열의 문자 코드값 byte배열로 리턴
3. indexOf("찾는 문자열") : 찾는 문자열의 첫번째 index위치를 리턴, 없으면 -1리턴
4. replace("변경할대상문자열","변경할문자열") : 특정 문자열을 찾아서 변경할 문자열로 변경.
5. substring(추출할시작위치0~, 추출할마지막위치1~) : 해당 문자열을 index범위로 추출하여 
	문자열 생성
6. split("구문자") : 특정한 문자를 구분자로 구분해서 다시 배열로 만들어 줌
	ex) "사과-바나나-딸기".split("-") ==> {"사과","바나나","딸기"}
	    "안녕하세요! java프로그래밍".split("!") ==> {"안녕하세요"," java프로그래밍"}
7. length() : 문자열의 갯수
   ps) length : 배열의 크기  주의) 자바에서만 구분하여 사용..
 * */
		//          01 23 4567
		String str="hello!!javaProgramming";
		//          12 3 4567891011
		System.out.println(str.charAt(2));
		for(byte code:str.getBytes()) {
			System.out.println(code);
		}
		System.out.println(str.indexOf("java"));
		System.out.println(str.replace("!","#"));
		System.out.println(str.substring(7,11));
		for(String st:str.split("!")) {
			System.out.println(st);
		}
		System.out.println((int)'알');
	}

}
