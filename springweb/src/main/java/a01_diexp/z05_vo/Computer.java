package a01_diexp.z05_vo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
@Component
public class Computer {
	private String company;
	// 코드상 자동을 객체 할당 처리(컨테이너 안에 있으면)
	// 컨테이너 안에 여러 객체가 선언되어 있고, 특정 객체를  autowiring 하고 싶을 때, 처리하는 방법이 Qualifier 처리
	@Autowired
	@Qualifier("cpu02") // 할당할 객체 지정..
	private Cpu cpu;
	public Computer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Computer(String company) {
		super();
		this.company = company;
	}
	public void useCpu() {
		System.out.println("제조사 "+company+"의 cpu 사용");
		if(cpu==null) {
			System.out.println("CPU가 장착되지 않았습니다 ㅠㅠ");
		}else {
			System.out.println("# 장착된 cpu 정보 #");
			System.out.println("모델명:"+cpu.getModel());
			System.out.println("제조사:"+cpu.getCompany());
		}
	}
	public void setCpu(Cpu cpu) {
		this.cpu = cpu;
	}	
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Cpu getCpu() {
		return cpu;
	}
	public void setCpu2(Cpu cpu) {
		this.cpu = cpu;
	}

	
}
