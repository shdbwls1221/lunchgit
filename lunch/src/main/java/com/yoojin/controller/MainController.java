package com.yoojin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoojin.dto.Member;

@Controller
public class MainController {
	
	@RequestMapping(value="/")
	public String mainpage(HttpServletRequest request) {
		Member member = new Member(1, "유진");
		request.getSession().setAttribute("member", member);
		return "maiapage";
	}
}
