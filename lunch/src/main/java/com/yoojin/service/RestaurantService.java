package com.yoojin.service;

import java.util.List;

import com.yoojin.dto.Member;
import com.yoojin.dto.Restaurant;

public interface RestaurantService {
	public List<Restaurant> getRstntList(String category) throws Exception;
	public int insertRstnt(Restaurant rstntForm) throws Exception;
}
