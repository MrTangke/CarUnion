/**
 * 
 */
package com.car.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.rep.Repository;
import com.car.entity.user.OrderForm;
import com.car.entity.user.UserApply;
import com.car.service.AdminRepositoryService;
import com.car.service.UserApplyService;

/**
 * @author 石晋荣
 * 2018年4月25日  下午6:56:16
 */
@Controller
@RequestMapping("/adminDrive/")
public class AdminDriveController {
@Autowired
private UserApplyService applyService;
@Autowired
private AdminRepositoryService repService;

	@RequestMapping("toApply")
	public String toApply(HttpServletRequest request){
		List<UserApply> applies = applyService.getAllApplies();
		request.setAttribute("applies", applies);
		return "admin/drive/admin_apply";
	}
	
	@ResponseBody
	@RequestMapping("delApply")
	public int delApply(String appId){
		int result = applyService.delApply(appId);
		return result;
	}
	
	@RequestMapping("toApplyUpdate")
	public String toApplyUpdate(String appId,HttpServletRequest request){
		UserApply apply = applyService.getApplyById(appId);
		List<Repository> reps = repService.findRepositoryList();
		request.setAttribute("apply", apply);
		request.setAttribute("reps", reps);
		return "admin/drive/app_update";
	}
	
	//联络
	@ResponseBody
	@RequestMapping("lianluo")
	public String lianluo(String appId){
		UserApply apply = applyService.getApplyById(appId);
		if(apply.getApplyState() == 2) {
			applyService.delApply(appId);
			return "2";
		} else {
			applyService.updateLL(apply);
			applyService.delApply(appId);
		}
		return "2";
	}
	
	
	@RequestMapping("updateApp")
	public String updateApp(UserApply apply,HttpServletRequest request){
		applyService.update(apply);
		 // 自定义父页面跳转URL
		String redirectUrl = "adminDrive/toApply";
		request.setAttribute("redirectUrl", redirectUrl);		
		return "admin/closeLayer";
	}
}
