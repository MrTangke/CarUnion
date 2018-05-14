package com.car.service;

import java.util.List;

import com.car.entity.car.CarModel;

public interface AdminModelService {

	List<CarModel> findModelList();

	void insertModel(CarModel model);

	CarModel findModelByModelId(Integer modelId);

	void updateModel(CarModel model);

	int deleteModel(Integer modelId);

}
