package backweb.a02_object.a02_relation.vo;

public class Computer {
	private String model;
	private Monitor monitor;
	public Computer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Computer(String model, Monitor monitor) {
		super();
		this.model = model;
		this.monitor = monitor;
	}
	public void showInfo() {
		System.out.println("# 컴퓨터 정보 #");
		System.out.println("모델명:"+model);
		System.out.println("모니터해상도:"+monitor.getResolution());
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Monitor getMonitor() {
		return monitor;
	}
	public void setMonitor(Monitor monitor) {
		this.monitor = monitor;
	}
	
}
