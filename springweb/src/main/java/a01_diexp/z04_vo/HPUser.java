package a01_diexp.z04_vo;
import org.springframework.stereotype.Component;
@Component
public class HPUser {
	
	private String name;
	private HandPhone handPhone; // 1:1관계 객체
	public HPUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HPUser(String name) {
		super();
		this.name = name;
	}
	public void useMyPhone() { 
		System.out.println(name+"의 핸드폰 사용?");
		if(handPhone!=null) { // handPhone 객체가 할당되어 있을 때..
			System.out.println("소유한 핸드폰 정보");
			System.out.println("폰번호:"+handPhone.getNumber());
			System.out.println("폰제조사:"+handPhone.getCompany());
		}else { // handPhone==null
			System.out.println("ㅠㅠ 핸드폰이 없네요..~");
		}
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public HandPhone getHandPhone() {
		return handPhone;
	}
	public void setHandPhone(HandPhone handPhone) {
		this.handPhone = handPhone;
	}
	// setHp1  : set property명이 hp1이라고 지정됨..
	public void setHp1(HandPhone handPhone) {
		this.handPhone = handPhone;
	}
	
}
