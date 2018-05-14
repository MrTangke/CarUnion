
package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.manager.ManageUser;
import com.car.entity.manager.Push;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;
import com.car.service.AdminUserService;
import com.car.utils.FilesUtils;
import com.car.utils.MD5Util;

/**
 * @author 石晋荣
 * 2018年4月17日  下午9:31:24
 */
@Controller
@RequestMapping("/adminUser/")
public class AdminUserController {
	@Autowired
	private AdminUserService adminUserService;
	/*
	 * 去往后台用户列表
	 */
	@RequestMapping("toUserList")
	public String toUserList(HttpServletRequest request){
		List<User> users = adminUserService.getAllUserList();
		request.setAttribute("users", users);
		return "admin/user/admin_user";
	}
	/*
	 * 去往后台用户等级列表
	 */
	@RequestMapping("toLvList")
	public String toLvList(HttpServletRequest request){
		List<BuyerLevel> levels = adminUserService.getAllLevels();
		request.setAttribute("levels", levels);
		return "admin/user/admin_level";
	}
	/**
	 * ht 拉黑用户
	 * @param userId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("blockUser")
	public int blockUser(Integer userId){
		int result = adminUserService.blockUser(userId);
		return result;
	}
	/**
	 * 韩涛  去推送页面
	 * @param request
	 * @param userIds
	 * @return
	 */
	@RequestMapping("toPushPage")
	public String toPushPage(HttpServletRequest request,String userIds){
		request.setAttribute("userIds",userIds);
		List<Push> pushList = adminUserService.toOldPushList();
		request.setAttribute("pushList",pushList);
		return "admin/user/user_push";
	}
	
    @RequestMapping("toLevelUpdate")
    public String toLevelUpdate(Integer levelId,HttpServletRequest request){
    	
    	BuyerLevel level = adminUserService.findLevelById(levelId);
    	request.setAttribute("level",level);
		return "admin/user/level_update";
    }
    
    @RequestMapping("updateLevel")
    public String updateManageUser(MultipartFile file,BuyerLevel level, HttpServletRequest reqeust){

		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(reqeust, file, "/upload");
			level.setLevelImg(filePath);
		}

		adminUserService.updateLevel(level);
		// 自定义父页面跳转URL
		String redirectUrl = "adminUser/toLvList";
		reqeust.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
}
