package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.user.Coupon;
import com.car.entity.user.User;
import com.car.service.CouponService;

@Controller
@RequestMapping("adminCoupon")
public class AdminCouponController {

	@Autowired
	private CouponService cservice;
	
	@RequestMapping("toCoupon")
	public String list(HttpServletRequest request) {
		List<Coupon> coupon = cservice.getCouponList();
		request.setAttribute("coupon", coupon);
		return "admin/coupon/admin_coupon";
	}
	/**
	 * 去往添加页面
	 * @param request
	 * @return
	 */
	@RequestMapping("toCouponInsert")
	public String toCouponInsert(HttpServletRequest request) {
		return "admin/coupon/admin_coupon_insert";
	}
	
	/**
	 * 添加
	 */
	@RequestMapping("CouponInsert")
	public String CouponInsert(Coupon record,HttpServletRequest request) {
		cservice.insert(record);
		// 自定义父页面跳转URL
		String redirectUrl = "/adminCoupon/toCoupon";
		request.setAttribute("redirectUrl", redirectUrl);
		return "admin/closeLayer";
	}
	
	/**
	 * 去往修改页面
	 * @param request
	 * @return
	 */
	@RequestMapping("toCouponUpdate")
	public String toCouponUpdate(HttpServletRequest request,Integer couponId) {
		Coupon coupon = cservice.selectByPrimaryKey(couponId);
		request.setAttribute("coupon", coupon);
		return "admin/coupon/admin_coupon_update";
	}

	/**
	 * 修改
	 * @param request
	 * @param record
	 * @return
	 */
	@RequestMapping("couponUpdate")
	public String couponUpdate(HttpServletRequest request,Coupon record) {
		cservice.updateByPrimaryKey(record);
		String redirectUrl = "/adminCoupon/toCoupon";
		request.setAttribute("redirectUrl", redirectUrl);
		return "admin/closeLayer";
	}
	
	/**
	 * 删除
	 * 
	 */
	@ResponseBody
	@RequestMapping("deleteCoupon")
	public String delete(Integer couponId) {
		cservice.deleteByPrimaryKey(couponId);
		return "1";
	}
	
}
