package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.car.CarModel;
import com.car.mapper.car.CarModelMapper;
import com.car.service.CarModelService;
@Service
public class CarModelServiceImpl implements CarModelService {

	@Autowired
	private CarModelMapper mapper;
	
	@Override
	public List<CarModel> getModelList(CarModel model) {
		return this.mapper.getModelList(model);
	}

}
