package com.yoojin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yoojin.service.MemberService;

@RestController
@RequestMapping(value="/member")
public class MemberRestController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/checkname")
	public int checkName(String name) throws Exception{
		return memberService.checkName(name);
	}
	
}
