package com.quocar.chat.vo;

public class CmodelVo {
	//fields
	private int model_id;
	private String car_model;
	
	//constructor
	public CmodelVo() {}
	public CmodelVo(int model_id, String car_model) {
		super();
		this.model_id = model_id;
		this.car_model = car_model;
	}

	//getter/setter
	public int getModel_id() {
		return model_id;
	}


	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}


	public String getCar_model() {
		return car_model;
	}


	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}

	//toString
	@Override
	public String toString() {
		return "ChatVo [model_id=" + model_id + ", car_model=" + car_model + "]";
	}

	
	

}
