package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.car.CarImg;
import com.car.service.AdminCarImgService;
import com.car.utils.FilesUtils;


@Controller
@RequestMapping("/adminCarImg/")
public class AdminCarImgController {

	@Autowired
	private AdminCarImgService adminCarImgService;
	
	/**
	 * 韩涛
	 * @param 去图片列表
	 * @return
	 */
	@RequestMapping("toCarImgList")
	public String toCarImgList(HttpServletRequest request,Integer carId){
		List<CarImg> carImgList = adminCarImgService.toCarImgList(carId);
		request.setAttribute("carImgList",carImgList);
		request.setAttribute("carId",carId);
		return "admin/carManage/carImg/car_imglist";
	}
		
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toCarImgInsert")
	
	public String toCarImgInsert(HttpServletRequest request,Integer carId){
		request.setAttribute("carId",carId);
		return "admin/carManage/carImg/car_imginsert";
	}
	/**
	 * insertCarImg
	 * 韩涛
	 */
	@RequestMapping("insertCarImg")

	public String insertCarImg(Integer carId,CarImg carImg,MultipartFile img,HttpServletRequest request){
		System.out.println("==========="+img);
		
		String filePath = FilesUtils.FilesUpload_xm(request, img, "/upload");
	
	    carImg.setImgAddress(filePath);
		System.out.println("==========="+filePath);
		adminCarImgService.insertCarImg(carImg,carId);
		// 自定义父页面跳转URL
		String redirectUrl = "adminCarImg/toCarImgList?carId="+carId;
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛  去修改页面
	 * @param request
	 * @param CarImgId
	 * @return
	 */
	@RequestMapping("toCarImgUpdate")
	public String toCarImgUpdate(HttpServletRequest request,Integer imgId,Integer carId){
	    CarImg carImg = adminCarImgService.findCarImgByCarImgId(imgId);
	    request.setAttribute("carImg",carImg);
	    request.setAttribute("carId",carId);
		return "admin/carManage/carImg/car_imgupdate";
	}
	/**
	 * 韩涛 修改汽车图片
	 * @param file
	 * @param CarImg
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateCarImg")
	public String updateCarImg(MultipartFile file,CarImg carImg,Integer carId, HttpServletRequest reqeust){
		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(reqeust, file, "/upload");
			carImg.setImgAddress(filePath);
		}
		adminCarImgService.updateCarImg(carImg);
	 // 自定义父页面跳转URL
		
	 String redirectUrl = "adminCarImg/toCarImgList?carId="+carId;
	 reqeust.setAttribute("redirectUrl", redirectUrl);		
		return "admin/closeLayer";
	}
	/**
	 *  韩涛  单删 
	 * @param CarImgId
	 * @return
	 */
	@RequestMapping("deleteCarImg")
	@ResponseBody
	public int deleteCarImg(Integer imgId){
		int result = adminCarImgService.deleteUser(imgId);
		return result;
	}
    @ResponseBody
	@RequestMapping("mainCarImgUpdate")
	public int mainCarImgUpdate(HttpServletRequest request,CarImg carImg,Integer carId){
		int result = adminCarImgService.mainCarImgUpdate(carImg,carId);
		return result;
		
	}
}
