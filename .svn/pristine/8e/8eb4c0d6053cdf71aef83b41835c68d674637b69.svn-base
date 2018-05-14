package com.car.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;
import com.car.entity.user.UserLevelRel;
import com.car.mapper.user.BuyerLevelMapper;
import com.car.mapper.user.UserLevelRelMapper;
import com.car.service.BuyerLevelService;
@Service
@Transactional

public class BuyerLevelServiceImpl implements BuyerLevelService{

	@Autowired(required=false)
	private BuyerLevelMapper buyerLevelMapper;
	@Autowired
	private UserLevelRelMapper relMapper;

	

	@Override
	public BuyerLevel selectLevel(User user) {
		// TODO Auto-generated method stub
		return buyerLevelMapper.selectLevel(user);
	}



	/* (non-Javadoc)
	 * @see com.car.service.BuyerLevelService#insertLv(com.car.entity.user.User)
	 */
	@Override
	public void insertLv(User user2) {
		UserLevelRel userLv = new UserLevelRel();
		userLv.setLevelNum(0);
		userLv.setUserId(user2.getUserId());
		userLv.setLevelId(1);
		relMapper.insert(userLv);
		
	}
	
	
	
}
