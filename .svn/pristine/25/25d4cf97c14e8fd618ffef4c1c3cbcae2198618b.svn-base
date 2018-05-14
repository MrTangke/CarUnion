package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.car.Producer;

import com.car.service.AdminProducerService;

@Controller
@RequestMapping("/adminProducer/")
public class AdminProducerController {

	@Autowired
	private AdminProducerService adminProducerService;
	/***
	 * ht 去生产商列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toProducerList")
	public String toProducerList(HttpServletRequest request){
		List<Producer> proList= adminProducerService.findProducerList();
		request.setAttribute("proList", proList);
		return "admin/carManage/producer/admin_producer";
	}
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toProducerInsert")
	
	public String toProducerInsert(HttpServletRequest request){
		
		return "admin/carManage/producer/producer_insert";
	}
	/**
	 * ht 添加producer
	 * @param producer
	 * @param request
	 * @return
	 */
	@RequestMapping("insertProducer")

	public String insertProducer(Producer producer,HttpServletRequest request){
		
		adminProducerService.insertProducer(producer);
		// 自定义父页面跳转URL
		String redirectUrl = "adminProducer/toProducerList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛 去修改页面
	 * @param request
	 * @param proId
	 * @return
	 */
	@RequestMapping("toProducerUpdate")
	public String toProducerUpdate(HttpServletRequest request,Integer proId){
	    Producer producer= adminProducerService.findProducerByProId(proId);
	    request.setAttribute("producer",producer);
		return "admin/carManage/producer/producer_update";
	}
	/**
	 * 韩涛 修改
	 * @param producer
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateProducer")
	public String updateProducer(Producer producer, HttpServletRequest reqeust){
	
	    adminProducerService.updateProducer(producer);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminProducer/toProducerList";
	 reqeust.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	/**
	 * 韩涛 单删
	 * @param proId
	 * @return
	 */
	@RequestMapping("deleteProducer")
	@ResponseBody
	public int deleteProducer(Integer proId){
		int result = adminProducerService.deleteProducer(proId);
		return result;
	}
}
