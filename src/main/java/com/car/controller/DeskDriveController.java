/**
 * 
 */
package com.car.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.car.entity.car.CarGoods;
import com.car.entity.user.User;
import com.car.entity.user.UserComment;
import com.car.service.AdminCarService;
import com.car.service.AdminRepositoryService;
import com.car.service.CarGoodsService;
import com.car.service.CommentService;
import com.car.service.ImgService;
import com.car.service.LookHistoryService;
import com.car.service.UserApplyService;
import com.car.service.UserCollectService;
import com.car.service.UserService;


/**
 * @author 石晋荣
 * 2018年4月15日  下午8:56:01
 */
@Controller
@RequestMapping("/deskDriver/")
public class DeskDriveController {
	@Autowired
	private AdminCarService carService;
	@Autowired
	private ImgService imgService;
	@Autowired
	private UserService userService;
	@Autowired
	private AdminRepositoryService repService;
	@Autowired
	private UserApplyService applyService;
	@Autowired
	private LookHistoryService lookSerivce;
	@Autowired
	private CommentService commentService;
	@Autowired
	private CarGoodsService cservice;
	/*
	 * 去往我要预约
	 */
	@RequestMapping("toDrive")
	public String toDrive(String id,HttpServletRequest request){
		CarGoods car = carService.findCarByCarId(Integer.parseInt(id));
		request.setAttribute("car", car);
		return "desk/drive/desk_drive";
	}
	
	/*
	 * 去往具体车辆信息
	 */
	@RequestMapping("toCarInfo")
	public String toCarInfo(String id,HttpServletRequest request){
		//根据id查询车辆信息
		CarGoods car = carService.findCarByCarId(Integer.parseInt(id));
		User user = (User)request.getSession().getAttribute("user");
		//判断用户是否登陆
		int i = 0;
		if (null!=user) {
			//判断是否收藏
			List<CarGoods> cars = userService.selectCollect(user);
			for (CarGoods carGoods : cars) {
				if (carGoods.getCarId()==car.getCarId()) {
					i = 1;
				}
			}
			//增加用户浏览记录
			lookSerivce.insertHistory(user.getUserId(),id);
		}
		//获取此车辆评价
		List<UserComment> comments = commentService.findCarComment(id);
		//根据热度获取车辆数据
		List<CarGoods> carGoods = cservice.getGoodsList();
		//作用域存值
		request.setAttribute("plNum", comments.size());
		request.setAttribute("comments", comments);
		request.setAttribute("flag", i);
		request.setAttribute("car", car);
		request.setAttribute("imgs", imgService.getCarImgById(id));
		request.setAttribute("carGoods", carGoods);
		return "desk/drive/desk_carInfo";
	}
	
	/*
	 * 去往交易顾问
	 */
	@RequestMapping("toCarManager")
	public String toCarManager(){
		return "desk/drive/desk_carManager";
	}
	
	/*
	 * 去往表单提交
	 */
	@RequestMapping("toDriveForm")
	public String toDriveForm(String disId,String userId,HttpServletRequest request,String phone,String carId){
		User user = new User();
		user.setUserId(Integer.parseInt(userId));
		user = userService.selectUser(user);
		CarGoods car = carService.findCarByCarId(Integer.parseInt(carId));
		request.setAttribute("user", user);
		request.setAttribute("phone", phone);
		request.setAttribute("car", car);
		request.setAttribute("reps", repService.findRepositoryList());	
		return "desk/drive/desk_form";
	}
	/*
	 * 提交表单
	 */
	@RequestMapping("insertForm")
	public String insertForm(HttpServletRequest request,User user,String phone,String timea,String repId,String name,String carId){
		//添加试驾列表
		applyService.inserForm(user,phone,timea,repId,name,carId);
		// 自定义父页面跳转URL
		String redirectUrl = "deskUser/toOrderform?userId=1";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	
}
