package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarModel;
import com.car.mapper.car.CarBrandModelMapper;
import com.car.mapper.car.CarModelMapper;
import com.car.service.AdminModelService;

@Service
@Transactional
public class AdminModelServiceImpl implements AdminModelService {

	@Autowired
	private CarModelMapper carModelMapper;
	@Autowired
	private CarBrandModelMapper carBrandModelMapper;
	@Override
	public List<CarModel> findModelList() {
		
		return carModelMapper.findModelList();
	}

	@Override
	public void insertModel(CarModel model) {
		carModelMapper.insert(model);
		
	}

	@Override
	public CarModel findModelByModelId(Integer modelId) {
		
		return carModelMapper.selectByPrimaryKey(modelId);
	}

	@Override
	public void updateModel(CarModel model) {
		carModelMapper.updateByPrimaryKey(model);
		
	}

	@Override
	public int deleteModel(Integer modelId) {
		try {
			carModelMapper.deleteByPrimaryKey(modelId);
			carBrandModelMapper.updateModelByModelId(modelId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	
	}

}
