package com.car.service;

import java.util.HashMap;
import java.util.List;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarColor;
import com.car.entity.car.CarGoods;


public interface CarGoodsService {

    int deleteByPrimaryKey(Integer carId);

    int insert(CarGoods record);

    int insertSelective(CarGoods record);

    CarGoods selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(CarGoods record);

    int updateByPrimaryKey(CarGoods record);
   
	List<CarGoods> findcarList();
	
	public List<CarGoods> getGoodsList(String priceId, String modelId, String brandId, String disId, String carName);

	public Integer getCount(CarGoods goods);
	
	public List<CarGoods> getGoodsBuyIds(String brandId,String modelId,String priceId,String statusId,String colorId,
			String onfigId,String ccId,String speedId,String safeId, String pxName);

	/**
	 * @return
	 */
	List<CarColor> getAllColors();

	/**
	 * @return
	 */
	List<CarGoods> getGoodsList();

	/**
	 * @return
	 */
	List<CarGoods> getGoodsList(String disId);
	
	List<CarGoods> getGoods(String disId);

}
