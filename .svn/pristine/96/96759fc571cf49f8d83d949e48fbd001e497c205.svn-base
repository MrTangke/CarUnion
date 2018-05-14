package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.car.CarBrand;
import com.car.service.AdminBrandService;

@Controller
@RequestMapping("/adminBrand/")
public class AdminBrandController {

	@Autowired
	private AdminBrandService adminBrandService;
	/***
	 * ht 去生产商列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toBrandList")
	public String toBrandList(HttpServletRequest request){
		List<CarBrand> brandList= adminBrandService.findBrandList();
		request.setAttribute("brandList", brandList);
		return "admin/carManage/brand/admin_brand";
	}
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toBrandInsert")
	
	public String toBrandInsert(HttpServletRequest request){
		
		return "admin/carManage/brand/brand_insert";
	}
	/**
	 * ht 添加Brand
	 * @param Brand
	 * @param request
	 * @return
	 */
	@RequestMapping("insertBrand")

	public String insertBrand(CarBrand brand,HttpServletRequest request){
		
		adminBrandService.insertBrand(brand);
		// 自定义父页面跳转URL
		String redirectUrl = "adminBrand/toBrandList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛 去修改页面
	 * @param request
	 * @param proId
	 * @return
	 */
	@RequestMapping("toBrandUpdate")
	public String toBrandUpdate(HttpServletRequest request,Integer brandId){
	    CarBrand brand= adminBrandService.findBrandBybrandId(brandId);
	    request.setAttribute("brand",brand);
		return "admin/carManage/brand/brand_update";
	}
	/**
	 * 韩涛 修改
	 * @param Brand
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateBrand")
	public String updateBrand(CarBrand brand, HttpServletRequest reqeust){
	
	    adminBrandService.updateBrand(brand);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminBrand/toBrandList";
	 reqeust.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	/**
	 * 韩涛 单删
	 * @param proId
	 * @return
	 */
	@RequestMapping("deleteBrand")
	@ResponseBody
	public int deleteBrand(Integer brandId){
		int result = adminBrandService.deleteBrand(brandId);
		return result;
	}
}
