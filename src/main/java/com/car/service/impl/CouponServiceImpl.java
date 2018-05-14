package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.user.Coupon;
import com.car.mapper.user.CouponMapper;
import com.car.service.CouponService;
@Service
public class CouponServiceImpl implements CouponService {

	@Autowired
	private CouponMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer couponId) {
		return this.mapper.deleteByPrimaryKey(couponId);
	}

	@Override
	public int insert(Coupon record) {
		return this.mapper.insert(record);
	}

	@Override
	public Coupon selectByPrimaryKey(Integer couponId) {
		return this.mapper.selectByPrimaryKey(couponId);
	}

	@Override
	public int updateByPrimaryKeySelective(Coupon record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Coupon record) {
		return this.mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Coupon> getCouponList() {
		return this.mapper.getCouponList();
	}

	@Override
	public int insertSelective(Coupon record) {
		return this.mapper.insertSelective(record);
	}

	@Override
	public List<Coupon> getCouponUserList(Integer userId) {
		// TODO Auto-generated method stub
		return this.mapper.getCouponUserList(userId);
	}

}
