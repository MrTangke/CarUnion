package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.car.CarImg;
import com.car.entity.car.CarImgRel;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.car.CarImgMapper;
import com.car.mapper.car.CarImgRelMapper;
import com.car.service.AdminCarImgService;
@Service
@Transactional
public class AdminCarImgServiceImpl implements AdminCarImgService {

	@Autowired
	private CarImgMapper carImgMapper;
	@Autowired
	private CarImgRelMapper carImgRelMapper;
	@Autowired
	private CarGoodsMapper carGoodsMapper;
	@Override
	public List<CarImg> toCarImgList(Integer carId) {
		
		return carImgMapper.toCarImgList(carId);
	}

	@Override
	public void insertCarImg(CarImg carImg,Integer carId) {

		carImgMapper.insertSelective(carImg);
		CarImgRel carImgRel = new CarImgRel();
		carImgRel.setCarId(carId);
		carImgRel.setImgId(carImg.getImgId());
		carImgRelMapper.insert(carImgRel);
		
	}

	@Override
	public CarImg findCarImgByCarImgId(Integer imgId) {
		
		return carImgMapper.selectByPrimaryKey(imgId);
	}

	@Override
	public void updateCarImg(CarImg carImg) {
		carImgMapper.updateByPrimaryKey(carImg);
		
	}

	@Override
	public int deleteUser(Integer imgId) {
		try {
			 carImgMapper.deleteByPrimaryKey(imgId);
			  carImgRelMapper.deleteByImgId(imgId);
			  return 1;
		} catch (Exception e) {
			return 0;
		}
	}

	@Override
	public int mainCarImgUpdate(CarImg carImg, Integer carId) {
		try {
			CarImg carImg2 = carImgMapper.selectByPrimaryKey(carImg.getImgId());
			CarGoods carGoods = new CarGoods();
			carGoods.setCarId(carId);
			carGoods.setCarImg(carImg2.getImgAddress());
			carGoodsMapper.mainCarImgUpdate(carGoods);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}

}
