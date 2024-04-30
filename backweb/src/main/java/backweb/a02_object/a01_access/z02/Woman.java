package backweb.a02_object.a01_access.z02;

// 다른 패키지에 있는 클래스를 사용할 때, import를 하여야 한다.
import backweb.a02_object.a01_access.z01.Man;
import backweb.a02_object.a01_access.z01.Person;
//import backweb.a02_object.a01_access.z01.Product;

public class Woman {
	// 외부 패키지를 있는 객체를 사용할려면 import/public 두개 모두
	// 합치될 때 가능하다.
	Man man; // ctrl+shift+o
	Person p01; //
//	Product pro;  // public이 아니기에 호출이 불가능 하다.
}
/*
z03 패키지 추가.
	Book.java 생성(public)
	Food(x) class 선언..
z04 패키지 추가.
	Computer.java(public)
	==> 클래스에서 Book b1, 호출, Food f1 호출
	시, 호출되는지 여부 확인..(안되면 안되는 이유를 적으세요)
	
 * */
