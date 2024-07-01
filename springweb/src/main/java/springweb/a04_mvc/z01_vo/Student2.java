package springweb.a04_mvc.z01_vo;

public class Student2 {
	private int no;
	private String name;
	private int subject1;
	public Student2() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student2(int no, String name, int subject1) {
		super();
		this.no = no;
		this.name = name;
		this.subject1 = subject1;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSubject1() {
		return subject1;
	}
	public void setSubject1(int subject1) {
		this.subject1 = subject1;
	}

	
}
