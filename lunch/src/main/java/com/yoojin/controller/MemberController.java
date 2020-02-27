package com.yoojin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value="/index.do")
	public String loginPage() {
		return "loginpage";
	}
	
	@RequestMapping(value="/member/join.do")
	public String joinPage() {
		
		return "joinpage";
	}
	
}
