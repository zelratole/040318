package backweb.vo;
// backweb.vo.Member
public class Member {
	private String id;
	private String name;
	private String role;
	private int point;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String id, String name, String role, int point) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}
