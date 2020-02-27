package com.yoojin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojin.dao.MemberDao;
import com.yoojin.dto.Member;
import com.yoojin.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public int checkName(String name) throws Exception {
		return memberDao.checkName(name);
	}
	
	@Override
	public int insertMember(Member joinForm) throws Exception {
		return memberDao.insertMember(joinForm);
	}
	
	@Override
	public int getMaxSeqno() throws Exception {
		return memberDao.getMaxSeqno();
	}
}
