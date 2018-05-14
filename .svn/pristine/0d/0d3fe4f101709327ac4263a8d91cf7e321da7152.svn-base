package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.car.entity.car.CarGoods;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.Repository;
import com.car.service.AdminHistoryService;

@Controller
@RequestMapping("adminHistory")
public class adminHistoryController {

	@Autowired
	private AdminHistoryService adminHistoryService;
	@RequestMapping("toHistoryList")
	public String toHistoryList(HttpServletRequest request){
		List<CarRepositoryRel> carRepList = adminHistoryService.findHistoryList();
		request.setAttribute("carRepList",carRepList);
		
		return "admin/history/history_list";
	}
	
	@RequestMapping("toOutpPutAndInPut")
	public String toOutpPutAndInPut(HttpServletRequest request){
		List<CarGoods> carList= adminHistoryService.findCarList();
		List<Repository> repList= adminHistoryService.findRepList();
		request.setAttribute("carList",carList);
		request.setAttribute("repList",repList);
		return "admin/history/outpPutAndInPut";
	}
	
	@RequestMapping("outpPutAndInPut")
	public String outpPutAndInPut(HttpServletRequest request,CarRepositoryRel carRepRel){
		
		adminHistoryService.outpPutAndInPut(carRepRel);
		// 自定义父页面跳转URL
		String redirectUrl = "adminHistory/toHistoryList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
}
