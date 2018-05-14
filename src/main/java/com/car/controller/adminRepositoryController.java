package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.car.entity.rep.Repository;
import com.car.entity.rep.CarRepRel;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.RepDistrict;
import com.car.service.AdminRepositoryService;

@Controller
@RequestMapping("adminRepository")
public class adminRepositoryController {
  
	@Autowired
	private AdminRepositoryService adminRepositoryService;
	/**
	 * ht 去仓库列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toRepositoryList")
	public String toRepositoryList(HttpServletRequest request){
		List<Repository> repList = adminRepositoryService.findRepositoryList();
		request.setAttribute("repList",repList);
		return "admin/repository/repository_list";
	}
	/**
	 * ht 去地区列表
	 * @param request
	 * @return
	 */
	@RequestMapping("toRepDistrictList")
	public String toRepDistrictList(HttpServletRequest request){
		List<RepDistrict> disList= adminRepositoryService.findDistrictList();
		request.setAttribute("disList",disList);
		return "admin/repository/district_list";
	}
	/**
	 * ht 去添加页面
	 * @param request
	 * @return
	 */
	@RequestMapping("toRepositoryInsert")
	public String toRepositoryInsert(HttpServletRequest request){
		List<RepDistrict> disList= adminRepositoryService.findDistrictList();
		request.setAttribute("disList",disList);
		return "admin/repository/repository_insert";
	}
	
	@RequestMapping("insertRepository")
	public String insertRepository(Repository rep,HttpServletRequest request){
		adminRepositoryService.insertRepository(rep);
		// 自定义父页面跳转URL
		String redirectUrl = "adminRepository/toRepositoryList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@RequestMapping("toRepositoryUpdate")
	public String toRepositoryUpdate(Integer repId,HttpServletRequest request){
		Repository rep = adminRepositoryService.findRepById(repId);
		request.setAttribute("rep",rep);
		List<RepDistrict> disList= adminRepositoryService.findDistrictList();
		request.setAttribute("disList",disList);
		return "admin/repository/repository_update";
	}
	@RequestMapping("updateRepository")
	public String updateRepository(HttpServletRequest request,Repository rep){
		adminRepositoryService.updateRepository(rep);
		// 自定义父页面跳转URL
		String redirectUrl = "adminRepository/toRepositoryList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@ResponseBody
	@RequestMapping("deleteRepository")
	public int deleteRepository(Integer repId){
		int result=adminRepositoryService.updateRepository(repId);
		return result;
	}
	
	@RequestMapping("toRepDistrictInsert")
	public String toRepDistrictInsert(HttpServletRequest request){
		List<RepDistrict> disList= adminRepositoryService.findDistrictList();
		request.setAttribute("disList",disList);
		return "admin/repository/district_insert";
	}
	
	@RequestMapping("insertRepDistrict")
	public String insertRepDistrict(RepDistrict district,HttpServletRequest request){
		adminRepositoryService.insertRepDistrict(district);
		// 自定义父页面跳转URL
		String redirectUrl = "adminRepository/toRepDistrictList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@RequestMapping("toRepDistrictUpdate")
	public String toRepDistrictUpdate(Integer disId,HttpServletRequest request){
		
		RepDistrict dis = adminRepositoryService.findDisById(disId);
		List<RepDistrict> disList= adminRepositoryService.findDistrictList();
		request.setAttribute("disList",disList);
		request.setAttribute("dis",dis);
		return "admin/repository/district_update";
	}
	@RequestMapping("updateRepDistrict")
	public String updateRepDistrict(HttpServletRequest request,RepDistrict dis){
		adminRepositoryService.updateRepDistrict(dis);
		// 自定义父页面跳转URL
		String redirectUrl = "adminRepository/toRepDistrictList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	@ResponseBody
	@RequestMapping("deleteRepDistrict")
	public int deleteRepDistrict(Integer disId){
		int result = adminRepositoryService.deleteRepDistrict(disId);
		return result;
	}
	
	@RequestMapping("toCarMessage")
	public String toCarMessage(Integer repId,HttpServletRequest request){
		List<CarRepRel> carRepList = adminRepositoryService.toCarMessage(repId);
		request.setAttribute("carRepList",carRepList );
		return "admin/repository/car_rep_rel";
	}
}
