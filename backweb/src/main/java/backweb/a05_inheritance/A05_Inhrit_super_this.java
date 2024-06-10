package backweb.a05_inheritance;

public class A05_Inhrit_super_this {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Tiger t1 = new Tiger();
		t1.eat();
		Cow c1 = new Cow();
		c1.eatAll();
	}
	
}
// 1. 재정의시 this, super 구분 사용
// 2. 생성자 필수 호출 super
// ex) Cow 추가하여 상속하고, super.eat()를 사용하여 처리하세요..
class Animal2{
	void eat() {
		System.out.println("동물이 음식을 먹다");
	}
}
class Cow extends Animal2{
	void eat() {
		System.out.println("소가 풀을 뜯다!!");
	}
	void eatAll() {
		super.eat();
		this.eat();
	}
}
class Tiger extends Animal2{
	void eat() {
		super.eat(); // 상위에 선언한 메서드 호출..: 현재 메서드와 구분하기 위해
		System.out.println("호랑이가 고기를 먹다");
	}
}