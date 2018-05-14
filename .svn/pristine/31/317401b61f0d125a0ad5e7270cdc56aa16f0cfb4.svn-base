/**
 * 
 */
package com.car.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.user.Browsinghistory;
import com.car.entity.user.User;
import com.car.mapper.user.BrowsinghistoryMapper;
import com.car.service.AdminCarService;
import com.car.service.CarGoodsService;
import com.car.service.LookHistoryService;

/**
 * @author 石晋荣
 * 2018年4月27日  上午10:09:40
 */
@Service
@Transactional
public class LookHistoryServiceImpl implements LookHistoryService{
	@Autowired
	private BrowsinghistoryMapper lookMapper;
	@Autowired
	private AdminCarService carService;
	/* (non-Javadoc)
	 * @see com.car.service.LookHistoryService#insertHistory(java.lang.Integer, java.lang.String)
	 */
	@Override
	public void insertHistory(Integer userId, String id) {
		Browsinghistory browsinghistory = new Browsinghistory();
		//判断是否已经存在
		
		browsinghistory.setCarId(Integer.parseInt(id));
		browsinghistory.setUserId(userId);
		browsinghistory.setBroTime(new Date().toLocaleString());
		List<Browsinghistory> histories = lookMapper.findHisById(browsinghistory);
		if (histories.size()>0) {
			lookMapper.update(browsinghistory);
		}else {
			lookMapper.insert(browsinghistory);
		}	
	}
	/* (non-Javadoc)
	 * @see com.car.service.LookHistoryService#getUserHisLookCars(com.car.entity.user.User)
	 */
	@Override
	public List<CarGoods> getUserHisLookCars(User user) {
		List<CarGoods> cars = new ArrayList<CarGoods>();
		List<Browsinghistory> userHisLookCars = lookMapper.getUserHisLookCars(user.getUserId());
		if (userHisLookCars.size()>0) {
			for (Browsinghistory browsinghistory : userHisLookCars) {
				cars.add(carService.findCarByCarId(browsinghistory.getCarId()));
			}
		}
		return cars;
	}
	/* (non-Javadoc)
	 * @see com.car.service.LookHistoryService#clearAll(java.lang.Integer)
	 */
	@Override
	public void clearAll(Integer userId) {
		// TODO Auto-generated method stub
		lookMapper.clearAll(userId);
	}

}
