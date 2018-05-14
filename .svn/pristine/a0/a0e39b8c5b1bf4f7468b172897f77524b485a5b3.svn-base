package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarGoods;
import com.car.entity.car.CarModel;
import com.car.entity.car.CycleImage;
import com.car.entity.extra.Video;
import com.car.service.AdminCarService;
import com.car.service.AdminExtraService;
import com.car.service.CarBrandService;
import com.car.service.CarGoodsService;
import com.car.service.CarModelService;

@Controller
@RequestMapping("/desk/")
public class DeskController {
	@Autowired
	private CarGoodsService gservice;
	@Autowired
	private CarBrandService bservice;
	@Autowired
	private CarModelService mservice;
	@Autowired
	private AdminExtraService adminExtraService;
	@Autowired
	private AdminCarService carService;
	/*
	 * 去往前台
	 */
	@RequestMapping("toIndex")
	public ModelAndView toIndex(String disId){	
		ModelAndView mav = new ModelAndView();
		List<CarGoods> carGoods = gservice.getGoodsList(disId);
		List<CarBrand> Brand = bservice.getBrandList(new CarBrand());
		List<CarModel> carModel = mservice.getModelList(new CarModel());
		Video video = adminExtraService.findvideobychoice();
		List<CycleImage> cycleImageList = adminExtraService.getAllImgs();
		mav.addObject("carGoods", carGoods);
		mav.addObject("carBrand", Brand);
		mav.addObject("carModel", carModel);
		mav.addObject("video", video);
		mav.addObject("cycleImageList", cycleImageList);
		mav.setViewName("desk/desk_index");
 		return mav;
	}		
	/*
	 * 去往404页面
	 */
	@RequestMapping("to404")
	public String to404(){
		return "desk/extra/desk_404";
	}
	
	
	/*
	 * 去往网站公告
	 */
	@RequestMapping("toNewList")
	public String toNewList(){
		return "desk/extra/desk_newList";
	}
	
	/*
	 * 去往关于我们
	 */
	@RequestMapping("toAbout")
	public String toAbout(){
		return "desk/extra/desk_about";
	}
	
	/*
	 * 去往媒体报道
	 */
	@RequestMapping("toReport")
	public String toReport(){
		return "desk/extra/desk_report";
	}
	
	/*
	 * 去往活动介绍
	 */
	@RequestMapping("toEvent")
	public String toEvent(){
		return "desk/extra/desk_event";
	}
	
	/**
	 * 去往合作伙伴
	 */
	@RequestMapping("toPartner")
	public String toPartner() {
		return "desk/extra/desk_partner";
	}
	
	
	
	/*
	 * 用户退出
	 */
	@RequestMapping("quit")
	public ModelAndView quit(HttpServletRequest request,String disId){
		request.getSession().removeAttribute("user");
		ModelAndView mav = new ModelAndView();
		List<CarGoods> carGoods = gservice.getGoodsList(disId);
		List<CarBrand> Brand = bservice.getBrandList(new CarBrand());
		List<CarModel> carModel = mservice.getModelList(new CarModel());
		Video video = adminExtraService.findvideobychoice();
		List<CycleImage> cycleImageList = adminExtraService.getAllImgs();
		mav.addObject("carGoods", carGoods);
		mav.addObject("carBrand", Brand);
		mav.addObject("carModel", carModel);
		mav.addObject("video", video);
		mav.addObject("cycleImageList", cycleImageList);
		mav.setViewName("desk/desk_index");
 		return mav;
	}
	
	
}
