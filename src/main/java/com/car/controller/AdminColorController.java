package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.car.CarColor;
import com.car.service.AdminColorService;

@Controller
@RequestMapping("/adminColor/")
public class AdminColorController {

	@Autowired
	private AdminColorService adminColorService;
	/***
	 * ht 去颜色列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toColorList")
	public String toColorList(HttpServletRequest request){
		List<CarColor> colorList= adminColorService.findColorList();
		request.setAttribute("colorList", colorList);
		return "admin/carManage/color/admin_color";
	}
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toColorInsert")
	
	public String toColorInsert(HttpServletRequest request){
		
		return "admin/carManage/color/color_insert";
	}
	/**
	 * ht 添加Color
	 * @param Color
	 * @param request
	 * @return
	 */
	@RequestMapping("insertColor")

	public String insertColor(CarColor color,HttpServletRequest request){
		
		adminColorService.insertColor(color);
		// 自定义父页面跳转URL
		String redirectUrl = "adminColor/toColorList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛 去修改页面
	 * @param request
	 * @param proId
	 * @return
	 */
	@RequestMapping("toColorUpdate")
	public String toColorUpdate(HttpServletRequest request,Integer colorId){
	    CarColor color= adminColorService.findColorBycolorId(colorId);
	    request.setAttribute("color",color);
		return "admin/carManage/color/color_update";
	}
	/**
	 * 韩涛 修改
	 * @param Color
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateColor")
	public String updateColor(CarColor color, HttpServletRequest reqeust){
	
	    adminColorService.updateColor(color);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminColor/toColorList";
	 reqeust.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	/**
	 * 韩涛 单删
	 * @param proId
	 * @return
	 */
	@RequestMapping("deleteColor")
	@ResponseBody
	public int deleteColor(Integer colorId){
		int result = adminColorService.deleteColor(colorId);
		return result;
	}
	
}
