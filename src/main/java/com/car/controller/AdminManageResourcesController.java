package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.manager.ManagerResources;
import com.car.service.ManageResourcesService;

@Controller
@RequestMapping("/manageResources")
public class AdminManageResourcesController {

	@Autowired
	private ManageResourcesService manageResourcesService;
	
	@RequestMapping("/getManageResourcesList")
	public String getManageResourcesList(HttpServletRequest request){
		List<ManagerResources> manageResList = manageResourcesService.getManageResourcesList();
		request.setAttribute("manageResList",manageResList);
		
		return "admin/manager/res/manageres_list";
	}
	/*
	 * 跳转用户新增页面
	 */
	@RequestMapping("/toManageResourcesInsert")
	public String toManageResourcesInsert(HttpServletRequest request){
		List<ManagerResources> mrList = manageResourcesService.findPid();
		request.setAttribute("mrList",mrList);
		return "admin/manager/res/manageres_insert";
	}
	
	/*
	 * 用户新增
	 */
	
	@RequestMapping("/insertManageResources")
	public String insertres(ManagerResources res,HttpServletRequest request){
	

		manageResourcesService.insertManageResources(res);
		// 自定义父页面跳转URL
		String redirectUrl = "manageResources/getManageResourcesList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	
	/*
	 * 跳转用户修改页面
	 */
	
	@RequestMapping("/toManageResourcesUpdate")
	public String toManageResourcesUpdate(Integer resId, HttpServletRequest request){
		
		ManagerResources res = manageResourcesService.getManageResourcesByresId(resId);
		request.setAttribute("res",res);
		return "admin/manager/res/manageres_update";
	}

	/*
	 * 用户修改
	 */

	@RequestMapping("/updateManageResources")
	public String updateManageResources(ManagerResources res, HttpServletRequest reqeust){
		manageResourcesService.updateManageResources(res);
		// 自定义父页面跳转URL
		String redirectUrl = "manageResources/getManageResourcesList";
		reqeust.setAttribute("redirectUrl", redirectUrl);
		return "admin/closeLayer";
	}
	
	

	 
	@RequestMapping("/deleteManageResources")
	@ResponseBody
	public int deleteManageResources(Integer resId){
		int result = manageResourcesService.deleteManageResources(resId);
		return result;
	}
	
}
