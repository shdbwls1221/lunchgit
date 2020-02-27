package com.yoojin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojin.dao.MemberDao;
import com.yoojin.dto.Member;
import com.yoojin.service.MainService;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	MemberDao memberDao;
	
	@Override
	public Member getMember(String name) throws Exception{
		return memberDao.getMember(name);
	}
}
