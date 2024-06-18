package a01_diexp.z02_vo;
// a01_diexp.z01_vo.Computer
public class Computer {
	private String company;
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
