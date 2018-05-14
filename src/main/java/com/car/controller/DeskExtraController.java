/**
 * 
 */
package com.car.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.user.User;
import com.car.service.LookHistoryService;
import com.car.service.UserApplyService;
import com.car.service.UserCollectService;

/**
 * @author 石晋荣
 * 2018年4月25日  下午3:52:07
 */
@Controller
@RequestMapping("/deskExtra/")
public class DeskExtraController {
	@Autowired
	private UserCollectService collectService;
	@Autowired
	private UserApplyService applyService;
	@Autowired
	private LookHistoryService lookSerivce;
	
	@ResponseBody
	@RequestMapping("addCollect")
	public String addCollect(String carId,HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		collectService.addCollect(carId,user.getUserId().toString());
		return "1";
	}
	@ResponseBody
	@RequestMapping("delCollect")
	public String delCollect(String carId,HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		collectService.delCollect(carId,user.getUserId().toString());
		return "1";
	}
	
	@ResponseBody
	@RequestMapping("delApply")
	public String delApply(String id){
		applyService.delApply(id);
		return "1";
	}
	
	@ResponseBody
	@RequestMapping("clearHistory")
	public String clearHistory(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		lookSerivce.clearAll(user.getUserId());
		return "1";
	}
	
	
}
