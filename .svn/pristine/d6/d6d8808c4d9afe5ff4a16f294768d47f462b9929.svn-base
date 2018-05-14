/**
 * 
 */
package com.car.controller;


import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarGoods;
import com.car.entity.car.CarImg;
import com.car.entity.car.CarModel;
import com.car.service.AdminColorService;
import com.car.service.CarBrandService;
import com.car.service.CarGoodsService;
import com.car.service.CarModelService;
import com.car.service.ImgService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * @author 石晋荣
 * 2018年4月15日  下午8:54:41
 */
@Controller
@RequestMapping("/deskCar/")
public class DeskCarController {
	
	
	@Autowired
	private CarGoodsService gservice;
	@Autowired
	private CarBrandService bservice;
	@Autowired
	private CarModelService mservice;
	@Autowired
	private AdminColorService adminColorService;
	/*
	 * 去往我要买车
	 * @param priceId
	 * @param modelId
	 * @param brandId
	 * @param disId
	 * @param carName
	 * @param priceName
	 * @param brandName
	 * @param modelName
	 */
	@RequestMapping("toBuy")
	public ModelAndView toBuy(String priceId,String modelId,String brandId,String disId,String carName,String priceName,String brandName,String modelName,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		List<CarBrand> brand = bservice.getBrandList(new CarBrand());
		List<CarModel> carModel = mservice.getModelList(new CarModel());
		List<CarGoods> carGoods = gservice.getGoodsList(priceId,modelId,brandId,disId,carName);
		mav.addObject("carNum", carGoods.size());
		mav.addObject("carColor",gservice.getAllColors());
		mav.addObject("carModel", carModel);
		mav.addObject("brand", brand);
		mav.addObject("carGoods", carGoods);
		mav.addObject("brandName", brandName);		
		mav.addObject("modelName", modelName);
		mav.addObject("priceName", priceName);
		mav.addObject("carName", carName);
		mav.setViewName("desk/car/desk_buy");
		return mav;
	}
	
	/*
	 * 刷新页面
	 */
	@RequestMapping("fleshToBuy")
	public ModelAndView fleshToBuy(){
		ModelAndView mav = new ModelAndView();
		List<CarBrand> brand = bservice.getBrandList(new CarBrand());
		List<CarModel> carModel = mservice.getModelList(new CarModel());
		List<CarGoods> carGoods = gservice.getGoodsList();
		mav.addObject("carColor",gservice.getAllColors());
		mav.addObject("carModel", carModel);
		mav.addObject("brand", brand);
		mav.addObject("carNum", carGoods.size());
		mav.addObject("carGoods", carGoods);
		mav.setViewName("desk/car/desk_buy");
		return mav;
	}
	/*
	 * 去往车辆列表
	 */
	@RequestMapping("toCarList")
	public ModelAndView toCarList(String disId){
		ModelAndView mav = new ModelAndView();
		List<CarGoods> carGoods = gservice.getGoods(disId);
		List<CarModel> carModel = mservice.getModelList(new CarModel());
		List<CarBrand> carBrand = bservice.getBrandList(new CarBrand());
		mav.addObject("carGoods", carGoods);
		mav.addObject("carModel", carModel);
		mav.addObject("carBrand", carBrand);
		mav.addObject("nowTime",new Date().toLocaleString());
		mav.addObject("carColor", gservice.getAllColors());
		mav.setViewName("desk/car/desk_carList");
		return mav;
	}
	
	/**
	 * lzp
	 */
	@RequestMapping("toModel")
	public String Model1() {
		return "desk/car/desk_model";
	}	
	/**
	 * author:刘泽鹏
	 * @param carBrand
	 * @return
	 */
	@RequestMapping("getBrandlist")
	public ModelAndView getBrandList(CarBrand carBrand) {
		ModelAndView mav = new ModelAndView();
		List<CarBrand> brand = bservice.getBrandList(carBrand);
		mav.addObject("brand", brand);
		mav.setViewName("desk/car/desk_buy");
		return mav;
	}
	
	/**
	 * author:刘泽鹏
	 */
	@RequestMapping("toSelect")
	public ModelAndView toSelect(Integer brandId) {
		ModelAndView mav = new ModelAndView();
		CarBrand Brand = bservice.selectByPrimaryKey(brandId);
		mav.addObject("carBrand", Brand);
		mav.setViewName("desk/car/desk_carList");
		return mav;
	}
	
	/**
	 * sjr
	 * @throws JsonProcessingException 
	 */
	@ResponseBody
	@RequestMapping(value="getGoodsBuyIds", produces = "text/html;charset=UTF-8")
	public String getGoodsBuyIds(String pxName,String brandId,String modelId,String priceId,String statusId,String colorId,
			String onfigId,String ccId,String speedId,String safeId) throws JsonProcessingException {
		//根据条件查询汽车信息
		List<CarGoods> carGoods = gservice.getGoodsBuyIds(brandId,modelId,priceId,statusId,colorId,onfigId,ccId,speedId,safeId,pxName);	
		//list转json
		ObjectMapper objectMapper = new ObjectMapper();
		String carJson = objectMapper.writeValueAsString(carGoods);
		return carJson;
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
}
