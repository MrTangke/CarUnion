package com.car.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerResources;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.RoleResources;
import com.car.entity.manager.UserRole;
import com.car.service.AdminUserService;
import com.car.utils.DateTimeUtil;
import com.car.utils.MD5Util;



@Controller
@RequestMapping("/admin/")
public class AdminController {

@Autowired(required=false)
private AdminUserService adminUserService;


	/*
	 * 去index页面
	 */

	@RequestMapping("toIndex")
	public String toIndex(HttpServletRequest request){
	List<ManagerResources> resList = adminUserService.findResList();
	 request.setAttribute("resList", resList);
		return "admin/admin_index2";
	}
	
	

	/*
	 * 去登陆页面
	 */
	@RequestMapping("toLogin")
	public String toLogin(ManageUser mu,HttpServletRequest request){
		return "admin/admin_login";
       
		
	}


	/*
	 * 鍘诲線鍚庡彴娆㈣繋椤甸潰
	 */
	@RequestMapping("toWelcome")
	public String toWelcome(){
		return "admin/admin_welcome";
	}
	
	@RequestMapping("toManageUserMessage")
	public String toManageUserMessage(){
		return "admin/manageUser_message";
	}
    /**
     * ht 登录验证
     * @param user
     * @param yzm
     * @param request
     * @return
     */
    @RequestMapping("login")
	public String login(ManageUser user, String yzm, HttpServletRequest request){
		String msg = "";
		
		// 获取session中的验证码
		String randomCode = (String) request.getSession().getAttribute("randomCode");
		if(yzm == null || yzm == ""){
			msg = "请输入验证码";
		}else{
			if(randomCode.equals(yzm)){
				if(user != null){
					// 先根据用户名查询
					ManageUser use = adminUserService.getUserByUsername(user.getLoginName());
					ManageUser userCopy = new ManageUser();
					userCopy.setManageId(use.getManageId());
					//与当前时间进行比较，   	是否超出30分钟
					boolean b = DateTimeUtil.compareDateTime(use.getLoginTime(), 30);
			
					// 判断用户是否存在
					if(use != null ){
						// 在判断密码
						
						if(MD5Util.MD5(user.getLoginPwd()).equals(use.getLoginPwd())){
			                     
							//与当前时间进行比较， 超出30分钟
							if(b){
								//修改登录的次数   从0开始
								adminUserService.updateNumByManageId(use.getManageId());
								// 登录成功
								request.getSession().setAttribute("user2", use);
								List<ManagerResources> resList = adminUserService.findResList();
								request.setAttribute("resList", resList);
								 List<UserRole> mrList = adminUserService.findRoleByMid(use.getManageId());
								  ArrayList<Integer> list = new ArrayList<Integer>();
								 for (UserRole mr : mrList) {
									List<RoleResources> rresList= adminUserService.findResByRid(mr.getRoleId());
								   for (RoleResources rr : rresList) {
									      list.add(rr.getResId());
								}	
								  }
								 ArrayList<Integer> listTemp = new ArrayList<Integer>();
								 
							        for(int i=0;i<list.size();i++){  
							            if(!listTemp.contains(list.get(i))){  
							                listTemp.add(list.get(i));  
							            }  
							        }
								 
								 
								  request.setAttribute("list",listTemp);
								 return "admin/admin_index2";
								
							}else{    //与当前时间进行比较，没超出30分钟
								
								//判断登录的次数是否在3次之内
								if(use.getLoginNum() < 2){
									String format = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(new Date());
									userCopy.setLoginTime(format);
									userCopy.setLoginNum(0);
									adminUserService.updateDateTimeSelectiveByUid(userCopy);
									// 登录成功
									request.getSession().setAttribute("user2", use);
									List<ManagerResources> resList = adminUserService.findResList();
									request.setAttribute("resList", resList);
									 List<UserRole> mrList = adminUserService.findRoleByMid(use.getManageId());
									  ArrayList<Integer> list = new ArrayList<Integer>();
									 for (UserRole mr : mrList) {
										List<RoleResources> rresList= adminUserService.findResByRid(mr.getRoleId());
									   for (RoleResources rr : rresList) {
										      list.add(rr.getResId());
									}	
									  }
									 ArrayList<Integer> listTemp = new ArrayList<Integer>();
									 
								        for(int i=0;i<list.size();i++){  
								            if(!listTemp.contains(list.get(i))){  
								                listTemp.add(list.get(i));  
								            }  
								        }
									 
									 
									  request.setAttribute("list",listTemp);
									return "admin/admin_index2";
			
								}else{
									msg = "登录30分钟之内超过3次   禁止登录";
								}
								
							}
							
						}else{
							msg = "密码错误";
							//密码   不相等
							//超过30分钟    则进行登录时间及次数重置
							if(b){
								String format = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(new Date());
								userCopy.setLoginTime(format);
								userCopy.setLoginNum(0);
								adminUserService.updateDateTimeSelectiveByUid(userCopy);
								
							}else{
								
								//如果失败得登陆次数  大于2次   则进行时间的更改    更改为最新的时间
								
								if(use.getLoginNum() >2){
									msg = "登录30分钟之内超过3次   禁止登录";
								}else{
									//如果登陆失败    则更改LoginNum登录次数
									adminUserService.updateLoginNumByUid(userCopy);
								}
							}
						}
					}
				
				}else{
					
					msg = "该用户不存在！";
				}
			}else{
				msg = "验证码输入错误，请重新输入！";
			}
		}
		
		request.setAttribute("msg", msg);
	
		return "admin/admin_login";
	}
    
}
