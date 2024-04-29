package backweb.a02_object;

public class A08_OverLoading {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Music m1 = new Music();
		Music m2 = new Music("음악1");
		Music m4 = new Music(1997);
		Music m3 = new Music("음악2","가수1");
	}
}
//ex) 오버로딩 규칙에 의해서 생성자를 선언하세요...-위에서 호출(main())
class Taxi{
	// 생성자의 이름이 같지만 매개변수에 의해서 식별이 가능하므로 선언을 할 수 있는 
	// 규칙 : 오버로딩
	Taxi(){
		System.out.println("택시1 호출");
	}

	Taxi(String name){
		System.out.println("택시2 호출:"+name);
	}	
	Taxi(int pay){
		System.out.println("택시3 호출:"+pay);
	}	
	Taxi(String name, int pay){
		System.out.println("택시4 호출:"+name);
		System.out.println("택시4 호출:"+pay);
	}	
	Taxi(int pay,String name){
		System.out.println("택시5 호출:"+name);
		System.out.println("택시5 호출:"+pay);
	}	
	
	
	
}
/*
# 오버로딩 규칙
1. 함수형에 선언할 수 있는 규칙으로 생성자와 메서드에 적용된다.
2. 동일한 이름을 선언할 수 있는 경우를 말하는 것으로 궁극적으로는 선언된 곳을 식별하여 호출가능할 때, 선언할 수 있다는 것이다.
3. 규칙내용
	1) 매개변수의 갯수가 다르면 선언이 가능한다.
	2) 타입이 다르면 선언이 가능하다.
	3) 타입이 순서를 다르게 하면 선언이 가능하다.
 * */
class Music{
	Music(){
		System.out.println("생성자1");
	}
	Music(String name){
		System.out.println("생성자2");
	} 
	Music(int year){
		System.out.println("생성자4");
	} 
	Music(String name, String singer){
		System.out.println("생성자3");
	}
	/* 변수명이 다른 것으로는 식별이 불가능하다.
	new Music("음악1","가수1");
	new Music("가수1","음악1"); 위 내용으로 식별을 할 수 없기에 선언 불가..
	Music(String singer, String name){
		System.out.println("생성자5");
	}
	*/	
	// 타입이 다른 경우, 호출할 때 식별이 가능하므로 선언이 가능하다.
	// new Music("홍길동",2024);
	Music(String name, int year){
		System.out.println("생성자6");
	}
	// new Music(2020,"마길동");
	Music(int year, String name ){
		System.out.println("생성자7");
	}
// ex) Bus	
	
	
	
}



