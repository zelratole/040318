package springweb.a04_mvc.z01_vo;

public class Product2 {
	private String pid;
	private String name;
	private int price;
	public Product2() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product2(String pid, String name, int price) {
		super();
		this.pid = pid;
		this.name = name;
		this.price = price;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
