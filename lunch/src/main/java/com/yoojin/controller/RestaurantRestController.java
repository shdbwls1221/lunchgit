package com.yoojin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yoojin.dto.Restaurant;
import com.yoojin.service.RestaurantService;

@RestController
public class RestaurantRestController {
	
	@Autowired
	RestaurantService rstntService;
	
	@RequestMapping(value="/rstnt")
	public List<Restaurant> getRstntList(String name) throws Exception{
		return rstntService.getRstntList(name);
	}
}
