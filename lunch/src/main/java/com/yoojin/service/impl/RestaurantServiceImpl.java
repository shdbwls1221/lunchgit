package com.yoojin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojin.dao.RestaurantDao;
import com.yoojin.dto.Restaurant;
import com.yoojin.service.RestaurantService;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	RestaurantDao rstntDao;
	
	@Override
	public List<Restaurant> getRstntList(String name) throws Exception{
		return rstntDao.getRstntList(name);
	}
}
