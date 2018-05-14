/**
 * 
 */
package com.car.controller;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.car.CarGoods;
import com.car.entity.manager.Push;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.Coupon;
import com.car.entity.user.User;
import com.car.entity.user.UserApply;
import com.car.entity.user.UserComment;
import com.car.service.BuyerLevelService;
import com.car.service.CouponService;
import com.car.service.LookHistoryService;
import com.car.service.UserApplyService;
import com.car.service.UserService;
import com.car.utils.FilesUtils;
import com.car.utils.MD5Util;

/**
 * @author 葛庭玮
 * 2018年4月16日  上午10:45:07
 */
@Controller
@RequestMapping("/deskUser/")
public class DeskUserController {
	@Autowired(required=false)
	private  UserService userService;
	@Autowired(required=false)
	private BuyerLevelService buyerLevelService;
	@Autowired
	private UserApplyService appService;
	@Autowired
	private BuyerLevelService lvService;
	@Autowired
	private LookHistoryService lookSerivce;
	@Autowired
	private CouponService couponService;
	
	/*
	 * 去往个人中心
	 */
	@RequestMapping("toUser")
	public String toUser(String userId,HttpServletRequest request,User user){

		user.setUserId(Integer.parseInt(userId));
		User list=   userService.selectUser(user);
		BuyerLevel list2 = buyerLevelService.selectLevel(user);
		request.setAttribute("list",list);
		request.setAttribute("list2",list2);
		request.setAttribute("colNum",userService.selectCollect(user).size());
		request.setAttribute("tsNum",  userService.selectPush(user).size());
		request.setAttribute("plNum",  userService.SelectUserComment(user).size());
		request.setAttribute("ddNum", appService.getApplyByUserId(user).size());
		request.setAttribute("hhNum",couponService.getCouponUserList(user.getUserId()).size());
		request.setAttribute("llNum",  lookSerivce.getUserHisLookCars(user).size());
		
		return "desk/user/desk_user";
	}
	
	/*
	 * 去往修改页面
	 */
	@RequestMapping("toUpdate")
	public String toUpdate(String userId,HttpServletRequest request){
		User user = new User();
		user.setUserId(Integer.parseInt(userId));
		User list=   userService.selectUser(user);
		request.setAttribute("list",list);
		
		return "desk/user/desk_userInfo";
	}
	
	
	
	
	/*
	 * 修改数据
	 * 葛庭玮2018年4月21日14:21:57
	 */
	@RequestMapping("updateUser")
	public String updateUser(String userId,MultipartFile file,HttpServletRequest request,User user){
		
		user.setUserId(Integer.parseInt(userId));	
		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(request, file, "/upload");
			user.setUserImg(filePath);
		}
		userService.updateUser(user);
	    
		// 自定义父页面跳转URL
				String redirectUrl = "deskUser/toUser?userId="+userId;
				request.setAttribute("redirectUrl", redirectUrl);	
				return "admin/closeLayer";
		
		
	}
	/*
	 * 去系统通知推送
	 */
		
	
	@RequestMapping("toUserLy")
	public String toUserLy(HttpServletRequest request,String userId){
		User user = new User();	
		user.setUserId(Integer.parseInt(userId));
		User list=   userService.selectUser(user);
		request.setAttribute("list",list);
		List<Push> list3=  userService.selectPush(user);
		request.setAttribute("list3", list3);
		return "desk/user/desk_userTs";
	}
	
	
	
	
	
	
	/*
	 * 登录验证
	 * ht 2018-4-28 14:33:31 
	 */
	@ResponseBody
	@RequestMapping("toLoginYz") 
	public String toLoginYz(String yzm,User user,HttpServletRequest request){
		String msg="";
		// 获取session中的验证码
		String randomCode = (String) request.getSession().getAttribute("randomCode");
		if(yzm == null || yzm == ""){	
			msg= "1";  //请输入验证码
		}else{
		if(randomCode.equals(yzm)){
			if(user != null){
				User use = userService.getUserByUsername(user.getUserName());
				if(use!=null){
					if(MD5Util.MD5(user.getUserPwd()).equals(use.getUserPwd())){
						request.getSession().setAttribute("user", use);
						msg=  "2"; //密码正确，登录成功
					}else {
						msg=  "3"; //密码错误，登录失败
					}
				}else {
					msg=  "4";//用户名错误
				}
			}
			}else {
				msg="5";//验证码错误
			}
			}
		return msg;
		
	}
	/*
	 * 注册账户
	 * 葛庭玮 2018年4月18日14:34:21
	 * ht 2018-4-28 16:19:19 修改
	 * */
	@ResponseBody
	@RequestMapping("register")
	public String register(String yzm2,User user,HttpServletRequest request){
		String msg="";
		// 获取session中的验证码
		String randomCode2 = (String) request.getSession().getAttribute("randomCode");
		if(yzm2 == null || yzm2 == ""){	
			msg= "1";  //请输入验证码
		}else{
		if(randomCode2.equals(yzm2)){
			try {
				//验证用户唯一性
				User user3 = userService.selSameUser(user);
				if (null == user3) {
					user.setRealName("车之盟用户");
					user.setUserLevelNum(0);
					user.setUserStatus(1);
					userService.register(user);
					User user2 = userService.loginn(user);
					lvService.insertLv(user2);
					User use = userService.loginn(user);
					 request.getSession().setAttribute("user", use);
					 msg= "2";//注册成功
				}else {
					msg= "5";//用户名重复
				}
				

			} catch (Exception e) {
				msg= "3";//注册失败
			}
		}else {
		msg= "4";//验证码错误	
		}
		}
		return msg;
	}
	
	
	
	
	/*
	 * 去往修改个人信息
	 */
	@RequestMapping("toUserInfo")
	public String toUserInfo(){
		return "desk/user/desk_userInfo";
	}
	
	
	
	/**
	 *toComment	 
	 *去评论页面
	 */
	@RequestMapping("comment")
	public String comment(HttpServletRequest request,String userId){	
		User user = new User();	
		user.setUserId(Integer.parseInt(userId));
		User list=   userService.selectUser(user);
		request.setAttribute("list",list);
		
		List<UserComment> list2 = userService.SelectUserComment(user);
		request.setAttribute("list2",list2);
		
		return "desk/user/desk_comment";
		
	}
	/**
	 * 去收藏页面
	 */
	
	@RequestMapping("toCollect")
	public String toCollect(HttpServletRequest request,String userId){
		
		User user = new User();	
		user.setUserId(Integer.parseInt(userId));
		List<CarGoods> list2 = userService.selectCollect(user);
		User list=   userService.selectUser(user);
		request.setAttribute("list",list);
		request.setAttribute("list2",list2);
		return "desk/user/desk_collect";
		
	}
	/**
	 * 去订单页面
	 */
	
	@RequestMapping("toOrderform")
	public String toOrderform(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		user.setUserId(user.getUserId());
		User list=   userService.selectUser(user);
		List<UserApply> apps = appService.getApplyByUserId(user);
		request.setAttribute("apps", apps);
		request.setAttribute("list",list);
		return "desk/user/desk_orderform";
		
	}
	/**
	 * 去优惠券页面
	 */
	
	@RequestMapping("toCoupon")
	public String toCoupon(HttpServletRequest request,String userId){
		User user=(User)request.getSession().getAttribute("user");
		user.setUserId(user.getUserId());
		List<Coupon> coupon = couponService.getCouponUserList(user.getUserId());
		User list=   userService.selectUser(user);
		request.setAttribute("list",list);
		
		request.setAttribute("coupon", coupon);
		return "desk/user/desk_coupon";
		
	}
	/**
	 * 去历史浏览记录
	 */
	
	@RequestMapping("browsinghistory")
	public String browsinghistory(HttpServletRequest request){
		User user=(User)request.getSession().getAttribute("user");
		//获取用户历史浏览记录
		List<CarGoods> list2=   lookSerivce.getUserHisLookCars(user);
		request.setAttribute("list2",list2);
		request.setAttribute("list", userService.selectUser(user));
		return "desk/user/desk_browsinghistory";
		
	}
	
	/**
	 * 修改密码
	 */
	
	
	@ResponseBody
	@RequestMapping("updatePwd") 
	public String updatePwd(String userId,User user,HttpServletRequest request,String userPwdd,String userPwddd){
		user.setUserPwd(MD5Util.MD5(user.getUserPwd()));
		user.setUserId(Integer.parseInt(userId));
        User use = userService.selectPwd(user);
		if(use == null){
			String message="密码输入错误，请重新输入";
			request.setAttribute("mes", message);
			return "2";
		}
		else{
			
			if( userPwdd == userPwddd){
				request.getSession().getAttribute("user");
				 user.setUserName(user.getUserName());
				 user.setUserPwd(userPwdd);
				userService.updatePwd(user);
				return "1";
				
			}
			else{
				return "3";
			}
			
			
		}
	}
	
}
