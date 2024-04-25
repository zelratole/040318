package backweb.a02_object;

public class A04_String {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# String 문자열 객체
1. char : 데이터 하나를 할당하는 문자형 데이터 유형.
2. char[] : 위 문자가 모여서 문자배열이 되어 객체로 사용한다.
3. char[]를 문자 배열이 주로 문자를 이루는 단어를 만들어서 주로 활용되어
	String이라는 문자열 객체를 만들어 활용하게 되었다.
4. String은  문자배열에서 파생했기에 문자가 가지고 있는 여러가지 형식을 차용하고
	접근 할 수 있다.
	.chatAt(index위치) : 문자열을 구성하고 있는 요소들 문자 하나씩 index로
		가져온다.
	.substring(시작, 마지막) : String을 구성하고 있는 문자의 시작과 마지막 
		위치의 문자를 가져온다.
5. String의 메모리 활용.
	1) String은 객체이기에 heap영역의 데이터를 사용한다.
	2) String 선언 형식에 따라 heap영역의 메모리를 다르게 사용한다.
		String str1 = new String("홍길동");
		String str2 = new String("홍길동");
		// 데이터를 입력(Scanner), args 대부분은 위와 같은 형식으로 데이터를
		   입력받게 된다.
		   if(str1 == str2) : false
		   str1 == str2 : stack영역에 할당된 데이터를 비교
		   주소값이 다르기에 false
		   
		// 두 문자열은 동일한 문자열이지만 str1, str2라고 참조값이 다르기에
		 다른 문자위치의 heap영역을 참조 한다.
		 그래서 str1 == str2는 false가 처리된다.
		 (자바만의 특징)
 * */
		// 대부분, 데이터 처리가 new String
		String str11 = new String("홍길동");
		String str12 = new String("홍길동");
		String str13 = new String("김길동");
		System.out.println("주소값 비교");
		System.out.println(str11 == str12);
		// 가지고 있는 문자열 자체 비교를 처리할 때는 equals()가 필요로 한다.
		System.out.println(str11.equals(str12));
		System.out.println(str11.equals(str13));
		String str14 = "홍길동"; // 3
		String str15 = "홍길동"; // 3
		System.out.println(str14 == str15);
		System.out.println(str14.substring(0,2));
		/*
		# 자바에서 "신길동" 바로 할당한 경우에는 특정한 메모리할당되는데.
		"신길동" 동일한 문자열 바로 선언하면 같은 메모리 위치에 할당한다.
		# 결론, 자바에서 문자열 비교시는 == 쓰지말고, .equals()를 활용하세요.
		
		 * */
		
		
		char c01 = 'A';
		char c02 = '홍';
		System.out.println(c01);
		System.out.println((int)c01);
		System.out.println(c02);
		System.out.println((int)c02);
		// 문자 ==> 문자 배열
		char[] arry1 = {'h','e','l','l','o'};
		char[] arry2 = {'안','녕','하','세','요'};
		System.out.println(arry1); 
		// 문자배열인 경우, 출력내용이 문자배열 그대로 출력이 된다.
		System.out.println(arry2);
		// 문자배열 ==> 문자열(String) 데이터 유형 만들어 짐.
		String str1 = new String(arry1);
		String str2 = new String(arry2);
		System.out.println("문자열:"+str1);
		System.out.println("문자열:"+str2);
		// ex1) 위와 같이 문자에서 문자열로 전환되어 가는 과정
		//      himan,   좋은하루 로 처리하여 만들어 보고 출력해보세요..
		char c03 = 'h';
		char c04 = '좋';
		char[] arry3 = {'h','i','m','a','n'};
		char[] arry4 = {'좋','은','하','루'};
		String str3 = new String(arry3);
		String str4 = new String(arry4);
		System.out.println(str3);
		System.out.println(str4);
		char c05 = str3.charAt(0); // index로 문자열을 접근하여 출력
		System.out.println(c05);
		char c06 = str3.charAt(1);
		System.out.println(c06);
		System.out.println("문자열 추출(시작0~, 마지막1~):"+
				str3.substring(2,5));
		String str5 = str4.substring(2,4);
		System.out.println(str5);
		// ex1) Hello World의 4번째 문자을 char로 할당하고 출력하세요.
		// ex2) I love Java programming에서 Java를 substring으로 추출하여
		//      subject 문자열에 할당하고 출력하세요.
		String greet = "Hello World";
		char c07 = greet.charAt(3);
		System.out.println("4번째 문자:"+c07);
		String sen01 = "I love Java programming";
		String subject = sen01.substring(7,11);
		System.out.println("과목:"+subject);
		
		
		
		
		
		
		
		
	}

}
