package com.car.service;

import java.util.List;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarBrandModel;
import com.car.entity.car.CarColor;
import com.car.entity.car.CarColorRel;
import com.car.entity.car.CarGoods;
import com.car.entity.car.CarImg;
import com.car.entity.car.CarModel;
import com.car.entity.car.Producer;

public interface AdminCarService {

	List<CarGoods> findcarList();

	void insertCar(CarGoods car);

	CarGoods findCarByCarId(Integer carId);

	void updateCar(CarGoods car);

	int deleteCar(Integer carId);

	List<CarGoods> findCarId();

	List<CarColorRel> findColorByCarId(Integer carId);

	List<CarBrandModel> findOtherList(Integer carId);

	void insertColor(Integer carId, CarColor color);

	List<CarColor> findColorList();

	CarColor findColorById(Integer colorId);

	void updateColor(CarColor color);

	int deleteColor(Integer colorId, Integer carId);

	List<CarBrand> findCarBrandList();

	List<CarModel> findCarModelList();

	List<Producer> findProducerList();

	void insertCarMessage(CarBrandModel cbm);

	CarBrandModel findcbmMessage(Integer carId);

	void updateCarMessage(CarBrandModel cbm);





}
