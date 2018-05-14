package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.ResourcesTree;
import com.car.service.AdminManageRoleService;

@Controller
@RequestMapping("/manageRole/")
public class AdminManageRoleController {

	@Autowired
	private AdminManageRoleService adminManageRoleService;
	
	@RequestMapping("findManageRoleList")
	public String findManageRoleList(HttpServletRequest request){
		List<ManagerRole> mRoleList= adminManageRoleService.findManageRoleList();
		request.setAttribute("mRoleList",mRoleList);
		return "admin/manager/role/manageRole_list";
	}
	/*
	 * 跳转用户新增页面
	 */
	@RequestMapping("/toManageRoleInsert")
	public String toManageRoleInsert(){
		return "admin/manager/role/manageRole_insert";
	}
	
	/*
	 * 用户新增
	 */
	
	@RequestMapping("/insertManageRole")
	public String insertManageRole(ManagerRole mRole,HttpServletRequest request){
	

		adminManageRoleService.insertManageRole(mRole);
		// 自定义父页面跳转URL
		String redirectUrl = "manageRole/findManageRoleList";
		request.setAttribute("redirectUrl", redirectUrl);	
	    return "admin/closeLayer";
	}
	
	/*
	 * 跳转用户修改页面
	 */
	
	@RequestMapping("/toManageRoleRoleUpdate")
	public String toManageRoleRoleUpdate(Integer roleId, HttpServletRequest request){
		
		ManagerRole mRole = adminManageRoleService.getManageRoleByRoleId(roleId);
		request.setAttribute("mRole",mRole);
		return "admin/manager/role/manageRole_update";
	}

	/*
	 * 用户修改
	 */

	@RequestMapping("/updateManageRole")
	public String updateManageRole(ManagerRole mRole, HttpServletRequest reqeust){
		adminManageRoleService.updateManageRole(mRole);
		// 自定义父页面跳转URL
		String redirectUrl = "manageRole/findManageRoleList";
		reqeust.setAttribute("redirectUrl", redirectUrl);	
	   return "admin/closeLayer";
	}
	
	

	 
	@RequestMapping("/deleteManageRole")
	@ResponseBody
	public int deleteManageRole(Integer roleId){
		int result = adminManageRoleService.deleteManageRole(roleId);
		return result;
	}
	
	@RequestMapping("/toAssignResources")
	public String toAssignResources(ManagerRole mRole, HttpServletRequest reqeust){
		List<ResourcesTree> resTree = adminManageRoleService.getResourcesTree(mRole.getRoleId());
		
		String jsonString = JSONArray.toJSONString(resTree);
		reqeust.setAttribute("jsonString", jsonString);
		reqeust.setAttribute("mRole", mRole);
		return "admin/manager/role/role_assign_resources";
	}


		@RequestMapping("assignResources")
		public String assignResources(Integer roleId, Integer[] redIds, HttpServletRequest request){
			adminManageRoleService.assignResources(roleId, redIds);
			
			return "admin/manager/role/role_assign_resources";
		}
}