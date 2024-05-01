package backweb.a02_object.a01_access.z06;

import backweb.a02_object.a01_access.z05.Student;

public class Teacher {
	private String name;
	private String subject;
	private int regYear;
	private Student stud;   // public class Student; 접근제어자 범위 안에 있을 때
	void callStudent() {
		stud = new Student(); 
		// public Student()생성자이게 접근가능
		stud.getEng(); // public메서드이기에 접근 가능..
//		stud.eng;// private이기에 접근 불가(private int eng;)
	}
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teacher(String name, String subject, int regYear) {
		super();
		this.name = name;
		this.subject = subject;
		this.regYear = regYear;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getRegYear() {
		return regYear;
	}
	public void setRegYear(int regYear) {
		this.regYear = regYear;
	}
	
}
