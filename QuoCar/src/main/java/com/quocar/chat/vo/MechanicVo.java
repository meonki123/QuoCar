package com.quocar.chat.vo;

public class MechanicVo {
	//fields
	private int mechanic_id;
	private String mechanic_name;
	
	//constructor
	public MechanicVo() {}
	public MechanicVo(int mechanic_id, String mechanic_name) {
		super();
		this.mechanic_id = mechanic_id;
		this.mechanic_name = mechanic_name;
	}

	//getter/setter
	public int getMechanic_id() {
		return mechanic_id;
	}
	public void setMechanic_id(int mechanic_id) {
		this.mechanic_id = mechanic_id;
	}
	public String getMechanic_name() {
		return mechanic_name;
	}
	public void setMechanic_name(String mechanic_name) {
		this.mechanic_name = mechanic_name;
	}

	//toString
	@Override
	public String toString() {
		return "Mechanic [mechanic_id=" + mechanic_id + ", mechanic_name=" + mechanic_name + "]";
	}

}
