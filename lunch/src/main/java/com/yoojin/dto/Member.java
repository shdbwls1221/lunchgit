package com.yoojin.dto;

public class Member {
	private int seqno;
	private String name;
	
	public Member(int seqno, String name){
		this.seqno = seqno;
		this.name = name;
	}
	
	public int getSeqno() {
		return seqno;
	}
	public void setSeqno(int seqno) {
		this.seqno = seqno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
