package backweb.a02_object.vo;
// backweb.a02_object.vo.Product
public class Product {
	// private : 외부 클래스에서 접근이 불가능 하게 하는 접근제어자.
	private String name;
	private int price;
	private int cnt;
	
	public Product() {
	}
	
	public Product(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	// public : 외부에서 접근 가능하는 접근제어자.
	public String getName() {
		return name;
	}
	// 간접적으로 지정한 기능메서드를 통해서 필드값 호출과 저장..
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
