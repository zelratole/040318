package backweb.vo;

import java.util.Date;

public class Bonus {
	private int bonus_id;
	private int employee_id;
	private int bonus_amount;
	private Date bonus_date;
	private String bonus_dateStr;
	public Bonus() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Bonus(int bonus_id, int employee_id, int bonus_amount, String bonus_dateStr) {
		super();
		this.bonus_id = bonus_id;
		this.employee_id = employee_id;
		this.bonus_amount = bonus_amount;
		this.bonus_dateStr = bonus_dateStr;
	}

	public Bonus(int bounus_id, int employee_id, int bonus_amount, Date bonus_date) {
		super();
		this.bonus_id = bounus_id;
		this.employee_id = employee_id;
		this.bonus_amount = bonus_amount;
		this.bonus_date = bonus_date;
	}
	public int getBonus_id() {
		return bonus_id;
	}
	public void setBonus_id(int bonus_id) {
		this.bonus_id = bonus_id;
	}
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public int getBonus_amount() {
		return bonus_amount;
	}
	public void setBonus_amount(int bonus_amount) {
		this.bonus_amount = bonus_amount;
	}
	public Date getBonus_date() {
		return bonus_date;
	}
	public void setBonus_date(Date bonus_date) {
		this.bonus_date = bonus_date;
	}

	public String getBonus_dateStr() {
		return bonus_dateStr;
	}

	public void setBonus_dateStr(String bonus_dateStr) {
		this.bonus_dateStr = bonus_dateStr;
	}

	
}
