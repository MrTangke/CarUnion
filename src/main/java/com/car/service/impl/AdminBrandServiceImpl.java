package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarBrand;
import com.car.mapper.car.CarBrandMapper;
import com.car.mapper.car.CarBrandModelMapper;
import com.car.service.AdminBrandService;
@Service
@Transactional
public class AdminBrandServiceImpl implements AdminBrandService {

	@Autowired
	private CarBrandMapper carBrandMapper;
	@Autowired
	private CarBrandModelMapper carBrandModelMapper;
	@Override
	public List<CarBrand> findBrandList() {
		
		return carBrandMapper.findBrandList();
	}

	@Override
	public void insertBrand(CarBrand brand) {
		carBrandMapper.insert(brand);
		
	}

	@Override
	public CarBrand findBrandBybrandId(Integer brandId) {
		
		return carBrandMapper.selectByPrimaryKey(brandId);
	}

	@Override
	public void updateBrand(CarBrand brand) {
		carBrandMapper.updateByPrimaryKey(brand);
		
	}

	@Override
	public int deleteBrand(Integer brandId) {
		try {
			carBrandMapper.deleteByPrimaryKey(brandId);
			 carBrandModelMapper.updateBrandByBrandId(brandId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}

}
