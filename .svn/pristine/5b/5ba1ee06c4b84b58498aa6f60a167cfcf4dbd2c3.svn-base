package com.car.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.car.CarColor;
import com.car.entity.car.CarGoods;
import com.car.mapper.car.CarColorMapper;
import com.car.mapper.car.CarGoodsMapper;
import com.car.service.CarGoodsService;
@Service
public class CarGoodsServiceImpl implements CarGoodsService {

	@Autowired
	private CarGoodsMapper mapper;
	@Autowired
	private CarColorMapper colorMapper;

	@Override
	public Integer getCount(CarGoods goods) {
		return this.mapper.getCount(goods);
	}

	@Override
	public int deleteByPrimaryKey(Integer carId) {
		return this.mapper.deleteByPrimaryKey(carId);
	}

	@Override
	public int insert(CarGoods record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(CarGoods record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByPrimaryKeySelective(CarGoods record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(CarGoods record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<CarGoods> findcarList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CarGoods selectByPrimaryKey(Integer carId) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.car.service.CarGoodsService#getAllColors()
	 */
	@Override
	public List<CarColor> getAllColors() {
		// TODO Auto-generated method stub
		return colorMapper.findColorList();
	}

	/* (non-Javadoc)
	 * @see com.car.service.CarGoodsService#getGoodsList(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public List<CarGoods> getGoodsList(String priceId, String modelId, String brandId, String disId,String carName) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> hashMap = new HashMap<Object,Object>();
		hashMap.put("priceId", priceId);
		hashMap.put("modelId", modelId);
		hashMap.put("brandId", brandId);
		hashMap.put("disId", disId);
		hashMap.put("carName", carName);
		return mapper.getGoodsList(hashMap);
	}
	
	/* (non-Javadoc)
	 * @see com.car.service.CarGoodsService#getGoodsBuyIds(java.lang.String, java.lang.String, java.lang.String)
	 */
	@Override
	public List<CarGoods> getGoodsBuyIds(String brandId,String modelId,String priceId,String statusId,String colorId,
			String onfigId,String ccId,String speedId,String safeId,String pxName) {
			HashMap<Object, Object> hashMap = new HashMap<Object,Object>();
			hashMap.put("brandId", brandId);
			hashMap.put("modelId", modelId);
			hashMap.put("priceId", priceId);
			hashMap.put("statusId", statusId);
			hashMap.put("colorId", colorId);
			hashMap.put("onfigId", onfigId);
			hashMap.put("ccId", ccId);
			hashMap.put("speedId", speedId);
			hashMap.put("safeId", safeId);
			hashMap.put("pxName", pxName);
			return this.mapper.getGoodsBuyIds(hashMap);
	}
	/* (non-Javadoc)
	 * @see com.car.service.CarGoodsService#getGoodsList()
	 */
	@Override
	public List<CarGoods> getGoodsList() {
		// TODO Auto-generated method stub
		return mapper.getGoodsLists();
	}
	
	/* (non-Javadoc)
	 * @see com.car.service.CarGoodsService#getGoodsList()
	 */
	@Override
	public List<CarGoods> getGoodsList(String disId) {
		// TODO Auto-generated method stub
		return mapper.getGoodsLists(disId);
	}

	@Override
	public List<CarGoods> getGoods(String disId) {
		// TODO Auto-generated method stub
		return mapper.getGoods(disId);
	}
}
