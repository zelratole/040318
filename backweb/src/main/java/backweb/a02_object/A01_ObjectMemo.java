package backweb.a02_object;

public class A01_ObjectMemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 자바에서 사용하는 대표적인 메모리 stack과 heap
		1. 개요
			1) 우리가 공간에 물건을 저장할 때, 어떻게 저장하는 것이 효율적일까요?
			2) 작은물건, 큰물건, stick(내용붙임)
			3) 큰 물건을 어디에 적재할지를 저장하는 공간을 따로 만들고, 
				작은 메모리는 바로 할당할 수 있게 처리 ==> stack, heap
			4) 작은물건의 저장과 큰물건이 적재된 위치
				==> stack의 메모리
			5) 큰물건이 실제 저장 ==> heap 메모리
			cf) 도서관과 서점에서 실제 도서가 있는 곳과 단말기(컴퓨터)를 통해 위치를 
				가르켜주고, 그 위치 코드를 출력해주는 것처럼
				java프로그램에서 stack과 heap영역을 사용하는 내용을 비유할 수 있다.
				ex) 
				Person p01 = new Person();
				new Person()이라는 객체를 생성하면서 heap영역에 특정한 위치에 저장
				p01이란 참조변수(reference variables)이름으로 heap영역의 주소값을
				stack영역에 저장하여 가지고 있다.
				==> Person 이라는 객체 유형을 p01이라는 이름으로 선언하고,
				heap영역 new Person()이라는 실제 객체를 저장하고, 그 주소값을
				p01에 할당하여 사용한다.
				p01.name : 해당객체에 속성 name을 접근하여 호출
				p01.show() : 해당객체에 메서드 show() 호출.
				
				
				
				
				
				
				
			6) stack영역만 쓰는 데이터와 stack과 heap영역을 쓰는 데이터의 구분기준은
				일정하게 한정되어 있는 데이터(기본유형)이냐 확장성이 있는 
				데이터(객체유형)이냐로 나눈다.
				객체 - 기본유형이 배열로 선언,
					문자열(String), 
					내장된 api객체(Scanner..Integer,
					 Double... Math..)
					class를 선언하여 호출하는 객체
		2. 객체유형의 데이터들..
			1) 메모리를 stack과 heap영역을 둘다 사용하는 데이터를 말한다.
			2) 객체는 생성하면(new 키워드로) heap영역에
				특정한 위치에 저장된다. 이 특정한 위치를
				보통 16진수로 설정하고 이 위치값을 저장하는
				메모리가 stack 영역이다.
				ex) 패키지명.객체명@16진수heap영역주소값.
			3) 종류 
			   - 배열형 데이터
			   		ex) new int[5]; {1000,2000}
			   		    new String(); 문자열(문자배열형)
			   		    new String[2]; {"사과","바나나"}
			   		    new Person[2];
			   		    	{new Person(),new Person()}
			   		    array[0] : 배열은 index로
			   		    	0부터시작하는 번호로 구분한다.
			   		    array[1]
			   		    array.length : 배열의 길이는 나타내는
			   		    	키워드 
			   - 내장된 api 객체
			   - class로 선언하여 호출하는 사용자 정의 객체
		*/
		System.out.println("# stack영역에 할당되는 데이터 #");
		int num01 = 25;
		System.out.println("기본유형:num01에 있는 데이터:"+num01);
		int[] arry = {1000,2000,3000};
		System.out.println("객체유형:arry에 있는 데이터:"+arry);
		// [I@3caeaf62  : [I - 배열 의미, 3caeaf62 heap영역의 주소값
		// 도면을 기반으로 만들어진 실제 건물과 같은 객체.
		Person p01 = new Person();
		// p01가 heap영역에 특정한 주소에 만들듯..
		System.out.println("객체유형:p01에 있는 데이터:"+p01);
		// p02라는 이름으로 heap영역에 특정한 주소에 객체를 생성
		Person p02 = new Person();
		System.out.println("객체유형:p02에 있는 데이터:"+p02);
		
		// backweb.a02_object.Person@5577140b
		// 패키지명.객체명@주소값..
		// stack영역에 저장되는 데이터는 heap영역의 주소값..
	}
}
// 사용자 정의 객체로 사용할 수 있는 틀역할을 하는 클래스..
// 붕어빵 틀, 건물의 도면..
class Person{
	
	
}




