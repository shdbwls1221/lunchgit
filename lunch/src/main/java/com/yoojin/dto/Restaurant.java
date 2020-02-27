package com.yoojin.dto;

public class Restaurant {
	private int rstntSeqno;
	private String rstntName;
	private String rstntLocation;
	private String category;
	private String register;
	private String registDate;
	
	public int getRstntSeqno() {
		return rstntSeqno;
	}
	public void setRstntSeqno(int rstntSeqno) {
		this.rstntSeqno = rstntSeqno;
	}
	public String getRstntName() {
		return rstntName;
	}
	public void setRstntName(String rstntName) {
		this.rstntName = rstntName;
	}
	public String getRstntLocation() {
		return rstntLocation;
	}
	public void setRstntLocation(String rstntLocation) {
		this.rstntLocation = rstntLocation;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	
}
