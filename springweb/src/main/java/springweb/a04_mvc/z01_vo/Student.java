package springweb.a04_mvc.z01_vo;

public class Student {
//sname=홍길동&kor=70&eng=80&math=80
	private String sname;
	private int kor;
	private int eng;
	private int math;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String sname, int kor, int eng, int math) {
		super();
		this.sname = sname;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	public String getSname() {
		return sname;
	}
	// sname=
	// String sname = null;
	// String sname = "";
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getKor() {
		return kor;
	}
	// kor=
	// int kor = Integer.parseInt(null);
	// int kor = Integer.parseInt("");
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	
}
