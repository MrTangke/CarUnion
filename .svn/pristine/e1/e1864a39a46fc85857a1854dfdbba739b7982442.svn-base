package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.manager.Push;
import com.car.service.AdminPushService;

@Controller
@RequestMapping("/adminPush/")
public class AdminPushController {

	@Autowired
	private AdminPushService adminPushService;
	@RequestMapping("toPushList")
	public String toPushList(HttpServletRequest request){
		List<Push> pushList = adminPushService.toPushList();
		request.setAttribute("pushList",pushList);
		return "admin/AD/push/push_list";
	}
	@RequestMapping("toPushInsert")
	private String toPushInsert(){
		return "admin/AD/push/push_insert";
	}
	@RequestMapping("insertPush")
	private String insertPush(HttpServletRequest request,Push push){
		adminPushService.insertPush(push);
		
		// 自定义父页面跳转URL
		String redirectUrl = "adminPush/toPushList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@RequestMapping("toPushUpdate")
	public String toPushUpdate(Integer pushId,HttpServletRequest request){
		Push push = adminPushService.findPushByPushId(pushId);
		request.setAttribute("push",push);
		return "admin/AD/push/push_update";
	}
	@RequestMapping("updatePush")
	public String updatePush(HttpServletRequest request,Push push){
		
		adminPushService.updatePush(push);
		// 自定义父页面跳转URL
		String redirectUrl = "adminPush/toPushList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@ResponseBody
	@RequestMapping("deletePush")
	public int deletePush(Integer pushId){
		int result = adminPushService.deletePush(pushId);
		return result;
	}
	
	@ResponseBody
	@RequestMapping("pushMessage")
	public int pushMessage(String ids,String userIds){
		int result = adminPushService.pushMessage(ids,userIds);
		return result;
	}
	
	@RequestMapping("pushNewMessage")
	public String pushNewMessage(String userIds,Push push,HttpServletRequest request){
		
		adminPushService.pushNewMessage(userIds,push);
		
		// 自定义父页面跳转URL
		String redirectUrl = "adminUser/toUserList";
	    request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
}
