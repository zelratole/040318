package a01_diexp.z03_vo;
import org.springframework.stereotype.Component;
@Component
public class Cpu {
	private String model;
	private String company;
	public Cpu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cpu(String model, String company) {
		super();
		this.model = model;
		this.company = company;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
}
