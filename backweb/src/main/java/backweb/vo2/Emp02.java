package backweb.vo2;

import java.util.Date;

public class Emp02 {
// 사원명(ename), 직책명(job), 관리자번호(mgr), 입사일(hiredate)
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	public Emp02() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp02(String ename, String job, int mgr, Date hiredate) {
		super();
		this.ename = ename;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
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
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	
}
