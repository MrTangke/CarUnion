package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarBrandModel;
import com.car.entity.car.CarColor;
import com.car.entity.car.CarColorRel;
import com.car.entity.car.CarGoods;
import com.car.entity.car.CarImg;
import com.car.entity.car.CarModel;
import com.car.entity.car.Producer;
import com.car.mapper.car.CarBrandMapper;
import com.car.mapper.car.CarBrandModelMapper;
import com.car.mapper.car.CarColorMapper;
import com.car.mapper.car.CarColorRelMapper;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.car.CarImgMapper;
import com.car.mapper.car.CarImgRelMapper;
import com.car.mapper.car.CarModelMapper;
import com.car.mapper.car.ProducerMapper;
import com.car.service.AdminCarService;
@Service
@Transactional
public class AdminCarServiceImpl implements AdminCarService {

	@Autowired
	private CarGoodsMapper carGoodsMapper;
	@Autowired
	private CarImgMapper carImgMapper;
	@Autowired
	private CarColorRelMapper carColorRelMapper;
	@Autowired
	private CarColorMapper carColorMapper;
	@Autowired
	private CarBrandModelMapper carBrandModelMapper;
	@Autowired
	private CarBrandMapper carBrandMapper;
	@Autowired
	private CarModelMapper carModelMapper;
	@Autowired
	private ProducerMapper producerMapper;
	@Override
	public List<CarGoods> findcarList() {
	
		return carGoodsMapper.findcarList();
	}
	@Override
	public void insertCar(CarGoods car) {
		car.setCarHeat(0);
		car.setCarColNum(0);
		carGoodsMapper.insert(car);
		CarBrandModel carBrandModel = new CarBrandModel();
		carBrandModel.setCarId(car.getCarId());
		carBrandModelMapper.insert(carBrandModel);
	}
	@Override
	public CarGoods findCarByCarId(Integer carId) {
		// TODO Auto-generated method stub
		return carGoodsMapper.selectByPrimaryKey(carId);
	}
	@Override
	public void updateCar(CarGoods car) {
		carGoodsMapper.updateByPrimaryKey(car);
		
	}
	@Override
	public int deleteCar(Integer carId) {
		try {
			carGoodsMapper.deleteByPrimaryKey(carId);
			carBrandModelMapper.deleteByPrimaryKey(carId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	
	}
	//ht
	@Override
	public List<CarGoods> findCarId() {
		
		return carGoodsMapper.findCarId();
	}
	@Override
	public List<CarColorRel> findColorByCarId(Integer carId) {
		List<CarColorRel> carColorRelList = carColorRelMapper.findColorRelByCarId(carId);
		for (CarColorRel carColorRel : carColorRelList) {
			CarColor color= carColorMapper.selectByPrimaryKey(carColorRel.getColorId());
		    carColorRel.setCarColor(color);
		}
		
		return carColorRelList;
	}
	@Override
	public List<CarBrandModel> findOtherList(Integer carId) {
		String carName="";
		String proName="";
		String modelName="";
		String brandName="";
		List<CarBrandModel> cbmList = carBrandModelMapper.findOtherList(carId);
		for (CarBrandModel cbm : cbmList) {
			if(cbm.getCarId()!=null&&cbm.getCarId()!=0){
			CarGoods car =carGoodsMapper.selectByPrimaryKey(cbm.getCarId());
			      carName=car.getCarName();
			}
			if (cbm.getBrandId()!=null&&cbm.getBrandId()!=0) {
				CarBrand brand = carBrandMapper.selectByPrimaryKey(cbm.getBrandId());
				  brandName=brand.getBrandName();
			}
			if (cbm.getProducerId()!=null&&cbm.getProducerId()!=0) {
				Producer producer = producerMapper.selectByPrimaryKey(cbm.getProducerId());
			     proName=producer.getProName();
			}
			if (cbm.getModelId()!=null&&cbm.getModelId()!=0) {
				CarModel model = carModelMapper.selectByPrimaryKey(cbm.getModelId());
			    modelName=model.getModelName();
			}
		    cbm.setCarName(carName);
		    cbm.setBrandName(brandName);
		    cbm.setProName(proName);
		    cbm.setModelName(modelName);
		}
		return cbmList;
	}
	@Override
	public void insertColor(Integer carId, CarColor color) {
		CarColorRel carColorRel = new CarColorRel();
		carColorRel.setGoodsId(carId);
		carColorRel.setColorId(color.getColorId());
		carColorRelMapper.insert(carColorRel);
	}
	@Override
	public List<CarColor> findColorList() {
		
		return carColorMapper.findColorList();
	}
	@Override
	public CarColor findColorById(Integer colorId) {
		
		return carColorMapper.selectByPrimaryKey(colorId);
	}
	@Override
	public void updateColor(CarColor color) {
		carColorMapper.updateByPrimaryKey(color);
		
	}
	@Override
	public int deleteColor(Integer colorId, Integer carId) {
		try {
			CarColorRel carColorRel = new CarColorRel();
			carColorRel.setGoodsId(carId);
			carColorRel.setColorId(colorId);
			carColorRelMapper.deleteColor(carColorRel);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	@Override
	public List<CarBrand> findCarBrandList() {
	
		return carBrandMapper.findBrandList();
	}
	@Override
	public List<CarModel> findCarModelList() {
		
		return carModelMapper.findModelList();
	}
	@Override
	public List<Producer> findProducerList() {
		
		return producerMapper.findProducerList();
	}
	@Override
	public void insertCarMessage(CarBrandModel cbm) {
		CarBrandModel cbm1 = carBrandModelMapper.findMessage(cbm);
		if(cbm1!=null){
			carBrandModelMapper.deleteByPrimaryKey(cbm.getCarId());
			carBrandModelMapper.insert(cbm);
		}
		
	}
	@Override
	public CarBrandModel findcbmMessage(Integer carId) {
		
		return carBrandModelMapper.findcbmMessage(carId);
	}
	@Override
	public void updateCarMessage(CarBrandModel cbm) {
	   carBrandModelMapper.updateByPrimaryKey(cbm);
		
	}



}
