package com.yoojin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yoojin.dto.Member;
import com.yoojin.dto.Restaurant;
import com.yoojin.service.RestaurantService;

@RestController
@RequestMapping(value="/rstnt")
public class RestaurantRestController {
	
	@Autowired
	RestaurantService rstntService;
	
	/** 카테고리에 맞는 식당리스트 조회 **/
	@RequestMapping(value="/{category}", method=RequestMethod.GET)
	public List<Restaurant> getRstntList( @PathVariable("category") String category, HttpServletRequest request) throws Exception{
		Member member = (Member) request.getSession().getAttribute("member");
		return rstntService.getRstntList(category, member);
	}
}
