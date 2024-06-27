package springweb.a04_mvc.z01_vo;

public class Employee01 {
	private int employee_id;
	private String first_name;
	private double salary;
	private int department_id;
	public Employee01() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee01(int employee_id, String first_name, double salary, int department_id) {
		super();
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.salary = salary;
		this.department_id = department_id;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	
}
