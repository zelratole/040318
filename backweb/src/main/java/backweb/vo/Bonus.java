package backweb.vo;

import java.util.Date;

public class Bonus {
	private int bounus_id;
	private int employee_id;
	private int bounus_amount;
	private Date bounus_date;
	public Bonus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bonus(int bounus_id, int employee_id, int bounus_amount, Date bounus_date) {
		super();
		this.bounus_id = bounus_id;
		this.employee_id = employee_id;
		this.bounus_amount = bounus_amount;
		this.bounus_date = bounus_date;
	}
	public int getBounus_id() {
		return bounus_id;
	}
	public void setBounus_id(int bounus_id) {
		this.bounus_id = bounus_id;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public int getBounus_amount() {
		return bounus_amount;
	}
	public void setBounus_amount(int bounus_amount) {
		this.bounus_amount = bounus_amount;
	}
	public Date getBounus_date() {
		return bounus_date;
	}
	public void setBounus_date(Date bounus_date) {
		this.bounus_date = bounus_date;
	}
	
	
}
