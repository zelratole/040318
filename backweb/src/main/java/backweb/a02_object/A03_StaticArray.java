package backweb.a02_object;

public class A03_StaticArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 자바의 배열
1. 자바는 고정된 배열을 사용하여 한번에 크기가 정해진 내용으로
2. 보다 빠르게 읽기를 처리할 수 있게 한다.
3. 배열도 객체에 속해 있으므로, 객체의 생성 방식에 준해서 처리한다.
4. 배열의 선언/생성/활용
	1) 배열의 선언
	 	타입[] 배열명;
	 	어떤 유형인지 선언한다. 타입에는 기본데이터유형을 비롯하여,
	 	String, 클래스유형, 내장객체유형등 여러가지 선언이 가능하다.
	 2) 배열의 초기화
	 	배열도 객체이기에 기본적으로 초기화하여야지 호출하여 사용할 수 있다.
	 	객체가 데이터를 할당하지 않을 때, null로 선언하듯이 null로 초기화할 수 있다.
	 3) 배열의 데이터 할당.
	 	- 배열의 heap영역에 데이터가 없는 배열과
	 		ex) int[] arr = new int[5];
	 		    배열의 선언과 heap영역할당 처리, 데이터는 넣지 않았음.
	 	- heap영영엑 데이터를 넣은 할당을 할 수 있다.
	 		ex) String[] arr2 = new String[]{"사과","딸기","오렌지"};
	 		ex) String[] arr3 = {"사과","딸기","오렌지"};
	 		위와 같이 선언과 동시에 할당하는 것은 위 두가지 형식 모두가 허용을 한다.
	 
*/
		// 숫자형 배열
		int[] arr01; // 배열 선언
		arr01 = null; // 초기화(heap영역할당되지 않음)
		arr01 = new int[3]; // 배열의 크기 지정.. heap영역할당.
		// 개별 데이터 할당.
		arr01[0] = 1000;
		arr01[1] = 2000;
		arr01[2] = 3000;
		System.out.println("배열의 크기:"+arr01.length);
		// 반복문을 통한 배열의 데이터 가져오기..
		for(int idx=0;idx<arr01.length;idx++) {
			System.out.println(arr01[idx]);
		}
		// ex) 실수형 3개 double값으로 점수 소숫점 1자리까지를
		//  위와 같은 형태로 만들고 출력까지 하세요..
		double arr02[]; // 배열 선언
		arr02 = null;
		arr02 = new double[3]; //
		arr02[0] = 80.5;
		arr02[1] = 70.5;
		arr02[2] = 95.2;
		System.out.println("배열의 크기:"+arr02.length);
		for(int idx=0;idx<arr02.length;idx++) {
			System.out.println( arr02[idx]) ;
		}
		// 선언과 할당 처리.
		int [] arry03 = new int[] {100,200,300};
		int [] arry04 = {200,300,400};
		
		
		
		
		
		
		
		
	}
	
	
	

}
