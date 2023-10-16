package com.quocar.chat.vo;

public class AnswersVo {
	//fields
	private int answer_id;
	private int model_id;
	private int mechanic_id;
	private String answer_text;
	//constructor
	public AnswersVo() {}
	public AnswersVo(int answer_id, int model_id, int mechanic_id, String answer_text) {
		super();
		this.answer_id = answer_id;
		this.model_id = model_id;
		this.mechanic_id = mechanic_id;
		this.answer_text = answer_text;
	}
	//getter/setter
	public int getAnswer_id() {
		return answer_id;
	}
	public void setAnswer_id(int answer_id) {
		this.answer_id = answer_id;
	}
	public int getModel_id() {
		return model_id;
	}
	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}
	public int getMechanic_id() {
		return mechanic_id;
	}
	public void setMechanic_id(int mechanic_id) {
		this.mechanic_id = mechanic_id;
	}
	public String getAnswer_text() {
		return answer_text;
	}
	public void setAnswer_text(String answer_text) {
		this.answer_text = answer_text;
	}
	//toString
	@Override
	public String toString() {
		return "AnswersVo [answer_id=" + answer_id + ", model_id=" + model_id + ", mechanic_id=" + mechanic_id
				+ ", answer_text=" + answer_text + "]";
	}
}
