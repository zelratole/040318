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
