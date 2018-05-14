package com.car.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.car.CarBrand;
import com.car.mapper.car.CarBrandMapper;
import com.car.service.CarBrandService;
@Service
public class CarBrandServiceImpl implements CarBrandService {

	@Autowired
	private CarBrandMapper mapper;
	

	@Override
	public int deleteByPrimaryKey(Integer brandId) {
		return this.mapper.deleteByPrimaryKey(brandId);
	}

	@Override
	public int insert(CarBrand record) {
		return this.mapper.insert(record);
	}

	@Override
	public int insertSelective(CarBrand record) {
		return this.mapper.insertSelective(record);
	}

	@Override
	public CarBrand selectByPrimaryKey(Integer brandId) {
		return this.mapper.selectByPrimaryKey(brandId);
	}

	@Override
	public int updateByPrimaryKeySelective(CarBrand record) {
		return this.mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(CarBrand record) {
		return this.mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<CarBrand> getBrandList(CarBrand brand) {
		return this.mapper.getBrandList(brand);
	}



}
