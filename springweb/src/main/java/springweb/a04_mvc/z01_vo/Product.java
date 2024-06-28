package springweb.a04_mvc.z01_vo;

public class Product {
	//prodName=사과&price=3000&cnt=2 
	private String prodName;
	private int price;
	private int cnt;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String prodName, int price, int cnt) {
		super();
		this.prodName = prodName;
		this.price = price;
		this.cnt = cnt;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
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
