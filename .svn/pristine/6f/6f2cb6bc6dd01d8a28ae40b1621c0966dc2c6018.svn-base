package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.car.CarModel;
import com.car.service.AdminModelService;


@Controller
@RequestMapping("/adminModel/")
public class AdminModelController {

	@Autowired
	private AdminModelService adminModelService;
	/***
	 * ht 去车型列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toModelList")
	public String toModelList(HttpServletRequest request){
		List<CarModel> modelList= adminModelService.findModelList();
		request.setAttribute("modelList", modelList);
		return "admin/carManage/model/admin_model";
	}
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toModelInsert")
	
	public String toModelInsert(HttpServletRequest request){
		
		return "admin/carManage/model/model_insert";
	}
	/**
	 * ht 添加Model
	 * @param Model
	 * @param request
	 * @return
	 */
	@RequestMapping("insertModel")

	public String insertModel(CarModel model,HttpServletRequest request){
		
		adminModelService.insertModel(model);
		// 自定义父页面跳转URL
		String redirectUrl = "adminModel/toModelList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛 去修改页面
	 * @param request
	 * @param proId
	 * @return
	 */
	@RequestMapping("toModelUpdate")
	public String toModelUpdate(HttpServletRequest request,Integer modelId){
	    CarModel model= adminModelService.findModelByModelId(modelId);
	    request.setAttribute("model",model);
		return "admin/carManage/model/model_update";
	}
	/**
	 * 韩涛 修改
	 * @param Model
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateModel")
	public String updateModel(CarModel model, HttpServletRequest reqeust){
	
	    adminModelService.updateModel(model);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminModel/toModelList";
	 reqeust.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	/**
	 * 韩涛 单删
	 * @param proId
	 * @return
	 */
	@RequestMapping("deleteModel")
	@ResponseBody
	public int deleteModel(Integer modelId){
		int result = adminModelService.deleteModel(modelId);
		return result;
	}
}
