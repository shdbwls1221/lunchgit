package com.yoojin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yoojin.dto.Member;
import com.yoojin.dto.Restaurant;

@Mapper
public interface RestaurantDao {
	
	public List<Restaurant> getRstntList(String category);
	public int insertRstnt(Restaurant rstntForm);
}
