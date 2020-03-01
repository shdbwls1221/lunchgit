package com.yoojin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoojin.dao.RestaurantDao;
import com.yoojin.dto.Member;
import com.yoojin.dto.Restaurant;
import com.yoojin.service.RestaurantService;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	RestaurantDao rstntDao;
	
	@Override
	public List<Restaurant> getRstntList(String category) throws Exception{
		return rstntDao.getRstntList(category);
	}
	
	@Override
	public int insertRstnt(Restaurant rstntForm) throws Exception{
		return rstntDao.insertRstnt(rstntForm);
	}
}
