package backweb.vo;
//backweb.vo.Book
public class Book {
	private String title;
	private String author;
	private String publisher;
	private int price;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String title, String author, String publisher, int price) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
