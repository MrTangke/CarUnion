package com.car.service;

import java.util.HashMap;
import java.util.List;

import com.car.entity.car.CarBrand;

public interface CarBrandService {

    int deleteByPrimaryKey(Integer brandId);

    int insert(CarBrand record);

    int insertSelective(CarBrand record);

    int updateByPrimaryKeySelective(CarBrand record);

    int updateByPrimaryKey(CarBrand record);
    
    List<CarBrand> getBrandList(CarBrand carBrand);

	CarBrand selectByPrimaryKey(Integer brandId);
	
}
