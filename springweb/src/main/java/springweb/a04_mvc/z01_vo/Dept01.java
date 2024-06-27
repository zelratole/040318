package springweb.a04_mvc.z01_vo;

public class Dept01 {
	private String dname;
	private String loc;
	public Dept01() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Dept01(String dname, String loc) {
		super();
		this.dname = dname;
		this.loc = loc;
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
