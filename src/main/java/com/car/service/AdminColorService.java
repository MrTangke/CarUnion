package com.car.service;

import java.util.List;

import com.car.entity.car.CarColor;

public interface AdminColorService {

	List<CarColor> findColorList();
	
	List<CarColor> getColorList(CarColor color);

	void insertColor(CarColor color);

	CarColor findColorBycolorId(Integer colorId);

	void updateColor(CarColor color);

	int deleteColor(Integer colorId);

}
