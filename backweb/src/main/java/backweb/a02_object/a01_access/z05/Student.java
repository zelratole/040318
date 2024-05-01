package backweb.a02_object.a01_access.z05;

public class Student {
	// 외부 직접적인 접근 불가 접근제어자(private)
	private String name;
	private int kor;
	private int eng;
	private int math;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	// 필요에 따라 객체 생성시, 특정 필드를 초기화 하는 생성자를 중복정의(overloading)
	// 가능하다.
	public Student(String name) {
		super();
		this.name = name;
	}	
	public Student(int kor, int eng, int math) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	public Student(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
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
