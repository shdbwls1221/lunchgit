package com.yoojin.service;

import com.yoojin.dto.Member;

public interface MemberService {
	public int checkName(String name) throws Exception;
	public int insertMember(Member joinForm) throws Exception;
	public int getMaxSeqno() throws Exception;
}
