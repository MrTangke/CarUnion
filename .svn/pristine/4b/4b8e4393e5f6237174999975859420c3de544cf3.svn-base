/**
 * 
 */
package com.car.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.user.UserCollect;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.user.UserCollectMapper;
import com.car.service.CarGoodsService;
import com.car.service.UserCollectService;

/**
 * @author 石晋荣
 * 2018年4月25日  下午3:58:16
 */
@Service
@Transactional
public class UserCollectServiceImpl implements UserCollectService{
	@Autowired
	private UserCollectMapper collectMapper;
	@Autowired
	private CarGoodsMapper goodsMapper;
	/* (non-Javadoc)
	 * @see com.car.service.UserCollectService#addCollect(java.lang.String, java.lang.String)
	 */
	@Override
	public void addCollect(String carId, String userId) {
		// TODO Auto-generated method stub
		UserCollect userCollect = new UserCollect();
		userCollect.setCarId(Integer.parseInt(carId));
		userCollect.setUserId(Integer.parseInt(userId));
		userCollect.setCollectTime(new Date().toLocaleString());
		collectMapper.insert(userCollect);
		//增加汽车列表收藏量
		goodsMapper.insertCollect(Integer.parseInt(carId));
	}
	/* (non-Javadoc)
	 * @see com.car.service.UserCollectService#delCollect(java.lang.String, java.lang.String)
	 */
	@Override
	public void delCollect(String carId, String userId) {
		// TODO Auto-generated method stub
		UserCollect userCollect = new UserCollect();
		userCollect.setCarId(Integer.parseInt(carId));
		userCollect.setUserId(Integer.parseInt(userId));
		collectMapper.del(userCollect);
		//减少汽车列表收藏量
		goodsMapper.delCollect(Integer.parseInt(carId));
	}

}
