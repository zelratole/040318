package springweb.a04_mvc.z01_vo;

public class Emp_Dept01 {
	// empno, ename, dname, loc
	private int empno;
	private String ename;
	private String dname;
	private String loc;
	public Emp_Dept01() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp_Dept01(int empno, String ename, String dname, String loc) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.dname = dname;
		this.loc = loc;
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
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
