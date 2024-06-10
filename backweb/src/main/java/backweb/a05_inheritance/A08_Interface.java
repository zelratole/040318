package backweb.a05_inheritance;

public class A08_Interface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 인터페이스 : spring : DAO로 사용..
1. 인터페이스는 자바에서 클래스가 구현해야 하는 메서드들의 집합을 정의하는 특별한 타입입니다.
인터페이스는 구현을 제공하지 않으며, 이를 구현하는 클래스가 실제 메서드의 구현을 제공해야 합니다.
2. 인터페이스를 사용하면 클래스가 다중 상속을 통해 여러 기능을 구현할 수 있습니다.
3. 인터페이스의 특징
	1) 인터페이스 구현된 메서드를 가질 수 없다.  단) java8부터 default 메서드가 제공되고 있다.
	2) 인터페이스는 다중 상속을 허용한다. ps) 단일 상속 : 부모는 1개, 하위에 여러개 자식,
							          다중 상속 : 부모가 여러개, 하위에 어러개 자식 클래스
	3) 인터페이스는 필드는 무조건 상수이다. static final 생략, 객체 생성없이 사용가능.
	4) 클래스는 implments 키워드를 사용하여 인터페이스를 구현한다.
							          
	
 * */
		System.out.println("인터페이스 고유번호:"+FlyWay.NO);
//		FlyWay.NO = 5; 상수라서 변경 불가
		FlyWay f1 = new Wing01(); f1.fly();
		FlyWay f2 = new Wing02(); f2.fly();
	}
}
interface FlyWay{
	int NO = 4; // public static final 생략됨  객체 생성없이 바로 사용가능...
	void fly(); // public abstract 생략됨
}
class Wing01 implements FlyWay{
	@Override
	public void fly() {
		System.out.println("우리 동네를 나르다!!");
	}
}
class Wing02 implements FlyWay{
	@Override
	public void fly() {
		System.out.println("우리 나라 창공을 나르다!!");
	}
}




