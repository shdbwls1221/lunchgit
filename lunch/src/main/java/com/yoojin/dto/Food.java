package com.yoojin.dto;

public class Food {
	private int foodSeqno;
	private int rstntSeqno;
	private String foodName;
	private String price;
	private String score;
	private String description;
	private String registDate;
	
	public int getFoodSeqno() {
		return foodSeqno;
	}
	public void setFoodSeqno(int foodSeqno) {
		this.foodSeqno = foodSeqno;
	}
	public int getRstntSeqno() {
		return rstntSeqno;
	}
	public void setRstntSeqno(int rstntSeqno) {
		this.rstntSeqno = rstntSeqno;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
}
