package com.yoojin.dao;

import org.apache.ibatis.annotations.Mapper;

import com.yoojin.dto.Member;

@Mapper
public interface MemberDao {
	public Member getMember(String name);
	public int checkName(String name);
	public int getMaxSeqno();
	public int insertMember(Member joinForm);
}
