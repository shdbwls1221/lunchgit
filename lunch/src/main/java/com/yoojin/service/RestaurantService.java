package com.yoojin.service;

import java.util.List;

import com.yoojin.dto.Restaurant;

public interface RestaurantService {
	public List<Restaurant> getRstntList(String name) throws Exception;
}
