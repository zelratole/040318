package backweb.a01_begin;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class A17_Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 정적배열 선언과 할당, 데이터 로딩
		int [] arry = {1000,2000,3000};
		System.out.println("첫번째 데이터:"+arry[0]);
		System.out.println("배열의 크기:"+arry.length);
		for(int idx=0;idx<arry.length;idx++) {
			System.out.println(arry[idx]);
		}
		// forEach : 배열의 구성데이터 하나씩을 가져와서 처리..
		for(int no:arry) {
			System.out.println(no);
		}		
		// ex) 물건의 가격을 정적배열로 3개를 만들어 2가지 for형식으로 출력
		int[] prices = new int[3]; // 기본크기를 지정하고 할당하는 방법
		//  new 데이터유형[크기];
		prices[0] = 3000;prices[1] = 4000;prices[2] = 5000;
		for(int idx=0;idx<prices.length;idx++) {
			System.out.println(prices[idx]);
		}
		for(int price:prices) {
			System.out.println(price);
		}
		
		// ex) 회원의 id를 동적배열로 3개를 만들어 가지 for형식으로 출력..
		//  정적배열 ==> 동적배열 처리..
		String []ids = new String[]{"himan","goodMan","higirl"};
		List<String> members = Arrays.asList(ids);
		for(int idx=0;idx<members.size();idx++) {
			System.out.println(members.get(idx));
			String member = members.get(idx);
			//System.out.println(member);
		}
		for(String member:members) {
			System.out.println(member);
		}
		
		
		List<String> names = new ArrayList<String>();
		names.add("홍길동");names.add("김길동");names.add("신길동");
		//  ctrl+shift+o (자동 import)처리
		System.out.println("첫번째 데이터:"+names.get(0));
		System.out.println("배열의 크기:"+names.size());
		for(int idx=0;idx<names.size();idx++) {
			System.out.println(names.get(idx));
		}
		for(String name:names) {
			System.out.println(name);
		}
/*
# 동적배열
1. 자바에서는 동적배열을 내장 객체 개념 중에 하나인 Collection api에 있는 
	객체를 이용해서 처리한다.
2. 동적배열 장점 : 메모리가 고정되지 않고, 확장/축소가 가능한 형태를 말한다.
3. 동적배열 단점 : 읽기 속도가 정적배열에 비하여 느리다.
4. 동적배열의 사용
 	1) 내장된 객체를 이용하고, 기본적인 내장객체가 아니기에 import하여야 한다.
 	2) import java.util.List; 
 	   import java.util.ArrayList;
 	   상속개념에 의해서 상위 = 하위 형태로 처리된다(다형성이라는 효율을 위해)
 	3) 기본 선언
 	   List<데이터유형> list = new ArrayList<데이터유형>();
 	   <데이터유형> : generic 개념(해당 객체유형만 입력되게 선언하는 형태)
 	   ex)
 	   List<String> list1 = new ArrayList<String>(); //문자열데이터 입력
 	   List<Integer> list2 = new ArrayList<Integer>(); /숫자형데이터 입력
 	   list1.add("홍길동"); // 추가 처리
 	   list1.size(); // 크기를 가져오기.
 	   list2.add(3000); 
 	   list2.add(4000); 
 	   list2.size(); // 크기 가져오기..
 	   // 추가 처리 원래는 list2.add(new Integer(3000)); auto boxing에 의해가능
 	   list1.get(0); // 첫번째 데이터 홍길동 가져온다.
 	   list2.get(1); // 두번째 데이터 4000을 가져온다.
 	4) for에서 활용
 	   for(int idx=0;idx<list2.size();idx++){
 	   		list2.get(idx)
 	   }
 	   for(String str:list1){
 	   
 	   }
# 정적배열을 동적배열 전환방법
1. 정적배열
 	 String[] fruits = {"사과","바나나","딸기"};
2. Arrays.asList(정적배열)을 통해서 List형으로 변환시킨다.
 	 List<String> list = Arrays.asList(fruits);
 	 단, 위 단계로는 동적배열이 아니라 List형 정적배열이 된다.(크기변경불가능)
3. new ArrayList<>() 생성자에 매개변수로 할당하여야 동적배열이 된다.
     List<String> frList = new ArrayList<>(list);
==> 위, 2~3번 단계를 한꺼번에 처리할려면
     List<String> fruitList = new ArrayList<>(Arrays.asList(fruits));
     로 처리하면 된다.(추가 삭제가 가능한 상태 즉 동적배열로 처리가 가능)
          
 	   
 * */
		
		
/*
# 배열 반복문 처리.
1. 배열과 반복문은 밀접하게 연관관계를 있기에 이에 대한 처리 방식을 효율적으로
	하는 것이 필요하다.
2. 배열 선언과 할당.
	1) 정적배열(배열의 구조가 변경되지 않음)-읽기전용(로딩속도빠름)
		데이터유형[] 배열명 = {데이터1, 데이터2, 데이터3};
		배열의 크기 : 배열명.length
		배열의 접근 : 배열명[index번호]
	2) 동적배열(배열의 구조가 변경 가능)-읽기쓰기가능(로딩속도정적배열에 비해느리다)
		List<데이터유형> 배열명 = new ArrayList<데이터유형>();
		배열명.add(추가데이터);
		배열명.add(추가데이터);
		배열명.add(추가데이터);
		배열의 크기 : 배열명.size()
		배열의 크기 : 배열명.get(index번호)
3. 반복문(for)문을 통한 배열의 접근
	1) 정적배열
		for(int idx=0;idx<배열명.length;idx++){
			배열명[idx]
		}
	2) 동적배열
		for(int idx=0;idx<배열명.size();idx++){
			배열명.get(idx)
		}	
	3) foreach 구문 (동적배열/정적배열동일)
		for(단위데이터 변수명: 배열명){
			변수명 : 배열의 단위데이터 처리..
		}
		
		
		
*/
	}

}
