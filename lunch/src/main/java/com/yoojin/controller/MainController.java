package com.yoojin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoojin.dto.Member;
import com.yoojin.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping(value="/")
	public String mainpage() {
		return "loginpage";
	}
	
	/** 이름 정보로 로그인을 시도합니다. **/
	@RequestMapping(value="/actionlogin.do")
	public String actionLogin(String name, HttpServletRequest request) throws Exception {
		String resultMsg = "";
		// 1. DB에 이름이 일치하는 정보 조회
		Member member = mainService.getMember(name);
		// 2-1. DB에 일치하는 데이터가 없을 때.
		if(member == null) {
			resultMsg = "로그인에 실패했습니다.\n이름을 확인해주세요.";
			request.setAttribute("resultMsg", resultMsg);
			return "loginpage";
		}
		// 2-2. 세션에 멤버 데이터 저장
		request.getSession().setAttribute("member", member);
		return "mainpage";
	}
}
