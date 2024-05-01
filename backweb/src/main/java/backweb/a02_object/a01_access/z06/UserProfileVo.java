package backweb.a02_object.a01_access.z06;

public class UserProfileVo {
	private String username;
	private String email;
	private int age;
	public UserProfileVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserProfileVo(String username, String email, int age) {
		super();
		this.username = username;
		this.email = email;
		this.age = age;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
