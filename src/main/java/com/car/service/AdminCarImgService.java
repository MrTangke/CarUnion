package com.car.service;

import java.util.List;

import com.car.entity.car.CarImg;

public interface AdminCarImgService {

	List<CarImg> toCarImgList(Integer carId);

	void insertCarImg(CarImg carImg, Integer carId);

	CarImg findCarImgByCarImgId(Integer imgId);

	void updateCarImg(CarImg carImg);

	int deleteUser(Integer imgId);

	

	int mainCarImgUpdate(CarImg carImg, Integer carId);

}
