package backweb.a02_object.a01_access;
// // package backweb.a02_object.a01_access.a01_sub;
public class A01_AccessModifier {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
class Person{
	Woman woman;
	
}
//class Person{} 이게 불가능 한 이유는 
// package backweb.a02_object.a01_access; 상단에 동일한 이름으로 같은
// 클래스를 선언 불가능하기 때문이다. 파일이 달라져도 마챦가지 이다.

/*
# 접근제어자.
1. 객체와 객체간의 연관관계 클래스 선언시 필요하다.
2. 즉, 접근할 때, 객체단위, 필드단위, 생성자단위, 메서드단위로 설정하는 것을 말한다.
3. 예를들어 자동차라는 객체는 타이어, 핸들, 의자, 속도계등의 객체를 혼합하여 만들 객체이다.
   이렇게 객체조합하여 효율적으로 프로그램을 하기 위한 것을 객체지향 프로그램밍이라고 하는데,
4. 객체들간에 구성요소에 대한 접근범위를 설정하는 것을 접근제어자라고 한다.
# package
1. 객체들을 묶어주는 묶음단위를 말하고,
2. 객체의 바탕이 되는 클래스 상단에 선언한다. 
 	package backweb.a02_object.a01_access;
3. 패키지는 동일한 이름을 가져야지 같은 패키지이지, 계층적인 개념을 가지고 
 	상위에 있는 패키지가 하위에 있는 패키지를 포함하는 개념을 가지고 있지는 않다.
 	즉, package backweb.a02_object.a01_access;
 	package backweb.a02_object; 이 두 패키지는 포함관계가 없는 다른 패키지이다.
4. 모든 클래스로 부터 생성되는 객체의 패키지는 클래스 상단에 선언된 패키지의
 	이름이 동일할 때, 동일한 패키지를 가진 객체라고 할 수 있다.

# 같은 package내의 구성요소 접근제어 처리
1. 같은 package내에서는 접근제어자를 붙이지 않을 때, 자유롭게 접근이 가능하다.
	X class Person{
		X String name; 아무것도 붙이 않을 때는 말하고, 이것을 같은 패키지 있을 
		               자유롭게 접근이 가능하다.
	}

2. 같은 package내에서는 동일한 클래스를 선언하지 못 한다.
	package aaa;
	class Person{}
	
	package aaa;
	class Person{} // 선언불가능하다..
 	
 	
 	



 * */





