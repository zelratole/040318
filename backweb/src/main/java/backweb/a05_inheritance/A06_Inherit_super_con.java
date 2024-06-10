package backweb.a05_inheritance;

public class A06_Inherit_super_con {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Triangle02 t1 = new Triangle02();
	}

}
class Shape02{
	Shape02(){
		System.out.println("상위 모양 생성자(매개변수 없음)");
	}
}
class Triangle02 extends Shape02{
	// 선언하지 않는 경우
	/*
	Triangle02(){
		super();   가 기본적으로 되어 있음...
	}
	 * */
}
class Vehicle02{
	private String kind;
	Vehicle02(String kind){
		this.kind = kind;
	}
}
class Car02  extends Vehicle02{
	Car02() {
		super("자동차"); // 반드시 상위에 있는 생성자 첫번째 라인에서 호출하여야 한다.
	}
}



/*
# 생성자에서 사용하는 super
1. 모든 생성자는 반드시, 상위클래스가 정의된 생성자를 호출하여야 한다.
2. 단, default 생성자인 경우 자동으로 호출하고 있어서 생략이 가능하다.
	1) 상위 클래스 생성자 선언되지 않거나, 매개변수가 없는 생성자가 선언되어 있는 경우
		하위 클래스에서 명시적으로 super()라고 하지 않더라도 내부적으로 호출하고 있기애
		생략 가능하다.
3. 그래서, 만약에 상위 클래스의 생성자가 매개변수가 있는 생성자만 선언되어 있을 경우
	해당 매개변수에 맞게 호출하는 생성자를 생성자 선언시 반드시 호출하여야 한다.
	그것도, 생성자 선언 첫번째 라인에..
	class Vehicle{
		private String kind;
		Vehicle(String kind){
			this.kind = kind;
		}
	}
	class Car extends Vehicle{
		Car(){
			super("자동차"); //반드시 호출하여야 한다..
		}
	}
 * */


