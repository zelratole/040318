package backweb.vo2;

import java.util.Date;

public class Emp11 {
	private int empno;
	private String ename;
	private String job;
	private double sal;
	private Date hiredate; // 날짜형은 java.util.Date로 import
	public Emp11() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp11(int empno, String ename, String job, double sal, 
				Date hiredate) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.job = job;
		this.sal = sal;
		this.hiredate = hiredate;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
	
	
}
