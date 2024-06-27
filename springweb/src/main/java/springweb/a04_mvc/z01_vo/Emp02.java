package springweb.a04_mvc.z01_vo;

public class Emp02 {
	private String ename;
	private double sal;
	private int deptno;
	public Emp02() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp02(String ename, double sal, int deptno) {
		super();
		this.ename = ename;
		this.sal = sal;
		this.deptno = deptno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	
	
}
