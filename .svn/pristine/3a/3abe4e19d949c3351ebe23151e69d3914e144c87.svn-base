package com.car.service;

import java.util.List;

import com.car.entity.user.Coupon;

public interface CouponService {

	int deleteByPrimaryKey(Integer couponId);

    int insert(Coupon record);

    int insertSelective(Coupon record);

    Coupon selectByPrimaryKey(Integer couponId);
   
    int updateByPrimaryKeySelective(Coupon record);

    int updateByPrimaryKey(Coupon record);

	List<Coupon> getCouponList();

	List<Coupon> getCouponUserList(Integer userId);
}
