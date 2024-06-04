package backweb.a04_database;

import com.google.gson.Gson;

import backweb.vo.Emp;
import backweb.vo.Person;

public class Z01_Gson {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 네트웍에서 자바 객체를 json데이터 전송이 많이 이루어 지기에  구글에서 
		// lib로 지원함(웹프로그램 ==> 안드로이드 데이터 전송시,  안드로이드 프로그래밍에서 활용)
		// 객체를 json문자열 변경처리.
		 Gson gson = new Gson();
		 // 자바 객체
		 Person p01 = new Person("홍길동",25,"수원");
		 // json 문자열로 변환..
		 String jsonStr = gson.toJson(p01);
		 System.out.println("# 만들어진 json문자열 #");
		 System.out.println(jsonStr);
		 
		 A04_EmpDao dao = new A04_EmpDao();
		 String jsonArrStr = gson.toJson(dao.getEmpList(new Emp()));
		 System.out.println(jsonArrStr);
		 
		 
		 
		 
	}

}
