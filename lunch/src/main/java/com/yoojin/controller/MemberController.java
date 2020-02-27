package com.yoojin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoojin.dto.Member;
import com.yoojin.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/join.do")
	public String joinPage() {
		return "joinpage";
	}
	
	/** 회원 추가 후 로그인 페이지로**/
	@RequestMapping(value="/actionjoin.do")
	public String insertMember(Member joinForm, HttpServletRequest request) throws Exception {
		String resultMsg;
		// 1. 회원의 seqno 설정
		joinForm.setSeqno(memberService.getMaxSeqno());
		// 2. 회원 등록
		// return 1 : 성공
		// return 0 : 실패
		if(memberService.insertMember(joinForm)!=1) {
			// 2-1. 실패
			resultMsg = "가입에 실패했습니다.";
			request.setAttribute("resultMsg", resultMsg);
			return "forward:/join.do";
		}
		// 2-2. 성공
		resultMsg="가입되셨습니다.";
		request.setAttribute("resultMsg", resultMsg);
		return "loginpage";
	}
}
