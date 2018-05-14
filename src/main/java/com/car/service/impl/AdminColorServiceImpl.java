package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarColor;
import com.car.mapper.car.CarColorMapper;
import com.car.mapper.car.CarColorRelMapper;
import com.car.service.AdminColorService;
@Service
@Transactional
public class AdminColorServiceImpl implements AdminColorService {

	@Autowired
	private CarColorMapper carColorMapper;
	@Autowired
	private CarColorRelMapper carColorRelMapper;
	@Override
	public List<CarColor> findColorList() {
		
		return carColorMapper.findColorList();
	}

	@Override
	public void insertColor(CarColor color) {
		carColorMapper.insert(color);
		
	}

	@Override
	public CarColor findColorBycolorId(Integer colorId) {
		
		return carColorMapper.selectByPrimaryKey(colorId);
	}

	@Override
	public void updateColor(CarColor color) {
		carColorMapper.updateByPrimaryKey(color);
	}

	@Override
	public int deleteColor(Integer colorId) {
		try {
			carColorMapper.deleteByPrimaryKey(colorId);
			carColorRelMapper.deleteByColorId(colorId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}

	@Override
	public List<CarColor> getColorList(CarColor color) {
		return this.carColorMapper.getColorList(color);
	}

}
