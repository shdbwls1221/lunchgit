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
	
//	RestController는 주로 페이지에서 필요한 데이터를 반환할 때
	
	@Autowired
	RestaurantService rstntService;
	
	/** 카테고리에 맞는 식당리스트 조회 **/
	@RequestMapping(value="/category/{category}", method=RequestMethod.GET)
	public List<Restaurant> getRstntList( @PathVariable("category") String category) throws Exception{
		return rstntService.getRstntList(category);
	}
 
//	같은 URI더라도 GET/POST/PUT/DELETE 과 같은 메소드로 행위를 구분할 수 있다.
//	GET: select. 데이터 조회
//	POST: insert. 데이터 삽입
//	PUT: update. 데이터 갱신
//	DELETE: delete. 데이터 삭제
//	에 주로 쓰인다.
	
	/** 식당 추가 **/
	@RequestMapping(method=RequestMethod.POST)
	public int insertRstnt(Restaurant rstntForm) throws Exception {
		return rstntService.insertRstnt(rstntForm);
	}
}
