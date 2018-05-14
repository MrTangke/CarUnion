package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.car.CarBrand;
import com.car.entity.car.CarBrandModel;
import com.car.entity.car.CarColor;
import com.car.entity.car.CarColorRel;
import com.car.entity.car.CarGoods;
import com.car.entity.car.CarImg;
import com.car.entity.car.CarModel;
import com.car.entity.car.Producer;
import com.car.entity.user.UserApply;
import com.car.service.AdminCarService;
import com.car.utils.FilesUtils;

@Controller
@RequestMapping("/adminCar/")
public class AdminCarController {

	@Autowired
	private AdminCarService adminCarService;
	
	/**
	 * 韩涛
	 * @param 去汽车列表
	 * @return
	 */                   
	
	@RequestMapping("toCarList")
	
	public String toCarList(HttpServletRequest request){
		List<CarGoods> carlist= adminCarService.findcarList();
		request.setAttribute("carlist", carlist);
		return "admin/carManage/car/admin_car";
	}
	/**
	 * 韩涛
	 * @param 去添加页面
	 * @return
	 */
	@RequestMapping("toCarInsert")
	
	public String toCarInsert(HttpServletRequest request){
		
		return "admin/carManage/car/car_insert";
	}
	/**
	 * insertCar
	 * 韩涛
	 */
	@RequestMapping("insertCar")

	public String insertCar(CarGoods car,String carDateastr,MultipartFile img,HttpServletRequest request){
		System.out.println("==========="+img);
		
		String filePath = FilesUtils.FilesUpload_xm(request, img, "/upload");
	
		car.setCarImg(filePath);
	    
		System.out.println("==========="+filePath);
		adminCarService.insertCar(car);
		// 自定义父页面跳转URL
		String redirectUrl = "adminCar/toCarList";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
		
	}
	/**
	 * 韩涛  去修改页面
	 * @param request
	 * @param carId
	 * @return
	 */
	@RequestMapping("toCarUpdate")
	public String toCarUpdate(HttpServletRequest request,Integer carId){
	    CarGoods car = adminCarService.findCarByCarId(carId);
	    request.setAttribute("car",car);
		return "admin/carManage/car/car_update";
	}
	/**
	 * 韩涛 修改汽车
	 * @param file
	 * @param car
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateCar")
	public String updateCar(MultipartFile file,CarGoods car, HttpServletRequest reqeust){
		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(reqeust, file, "/upload");
			car.setCarImg(filePath);
		}
		adminCarService.updateCar(car);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminCar/toCarList";
	 reqeust.setAttribute("redirectUrl", redirectUrl);		
		return "admin/closeLayer";
	}
	/**
	 *  韩涛  单删 
	 * @param carId
	 * @return
	 */
	@RequestMapping("deleteCar")
	@ResponseBody
	public int deleteCar(Integer carId){
		int result = adminCarService.deleteCar(carId);
		return result;
	}

   @RequestMapping("toOtherSet")
   public String toOtherSet(HttpServletRequest request,Integer carId){
	   List<CarColorRel> carColorRelList = adminCarService.findColorByCarId(carId);
	   request.setAttribute("carColorRelList",carColorRelList);
	   List<CarBrandModel> carBrandModelList = adminCarService.findOtherList(carId);
	   request.setAttribute("carBrandModelList",carBrandModelList);
	   request.setAttribute("carId",carId);
	   return "admin/carManage/car/car_otherSet";
   }
   @RequestMapping("toColorInsert")
   public String toColorInsert(Integer carId,HttpServletRequest request){
	  
	  List<CarColor> colorList= adminCarService.findColorList();
	  request.setAttribute("carId",carId);
	  request.setAttribute("colorList",colorList);
	   return "admin/carManage/car/carcolor_insert";
   }
   @RequestMapping("insertColor")
   public String insertColor(Integer carId,CarColor color,HttpServletRequest request){
	   
	   adminCarService.insertColor(carId,color);
	   // 自定义父页面跳转URL
		 String redirectUrl = "adminCar/toOtherSet?carId="+carId;
		request.setAttribute("redirectUrl", redirectUrl);		
		return "admin/closeLayer";
   }
   
   @RequestMapping("toColorUpdate")
   public String toColorUpdate(Integer carId,Integer colorId,HttpServletRequest request){
	   
	     CarColor color = adminCarService.findColorById(colorId);
		  request.setAttribute("carId",carId);
		  request.setAttribute("color",color);
		   return "admin/carManage/car/carcolor_update";
   }
	@RequestMapping("updateColor")
	public String updateColor(CarColor color,Integer carId, HttpServletRequest reqeust){
	
	    adminCarService.updateColor(color);
	 // 自定义父页面跳转URL
	 String redirectUrl = "adminCar/toOtherSet?carId="+carId;
	 reqeust.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	@ResponseBody
	@RequestMapping("deleteColor")
	public int deleteColor(Integer colorId, Integer carId){
		int result =adminCarService.deleteColor(colorId,carId);
		return result;
	}
	@RequestMapping("toCarMessageInsert")
	public String toCarMessageInsert(Integer carId,HttpServletRequest request){
		CarGoods car = adminCarService.findCarByCarId(carId);
		List<CarBrand> brandList = adminCarService.findCarBrandList();
		List<CarModel> modelList = adminCarService.findCarModelList();
		List<Producer> proList = adminCarService.findProducerList();
		request.setAttribute("car",car);
		request.setAttribute("brandList", brandList);
		request.setAttribute("modelList",modelList);
		request.setAttribute("proList", proList);
		 return "admin/carManage/car/carMessage_insert";
	}
	@RequestMapping("insertCarMessage")
	public String insertCarMessage(CarBrandModel cbm,Integer carId,HttpServletRequest request){
		
		adminCarService.insertCarMessage(cbm);
		
		// 自定义父页面跳转URL
		String redirectUrl = "adminCar/toOtherSet?carId="+carId;
		request.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
	@RequestMapping("toCarMessageUpdate")
	public String toCarMessageUpdate(Integer carId,HttpServletRequest request){
		CarGoods car = adminCarService.findCarByCarId(carId);
		List<CarBrand> brandList = adminCarService.findCarBrandList();
		List<CarModel> modelList = adminCarService.findCarModelList();
		List<Producer> proList = adminCarService.findProducerList();
		request.setAttribute("car",car);
		request.setAttribute("brandList", brandList);
		request.setAttribute("modelList",modelList);
		request.setAttribute("proList", proList);
		 CarBrandModel cbm = adminCarService.findcbmMessage(carId);
		   request.setAttribute("cbm",cbm);
		   
		return "admin/carManage/car/carMessage_update";
	}
	@RequestMapping("updateCarMessage")
	public String updateCarMessage(Integer carId,CarBrandModel cbm,HttpServletRequest request){
		
		adminCarService.updateCarMessage(cbm);
		// 自定义父页面跳转URL
		String redirectUrl = "adminCar/toOtherSet?carId="+carId;
		request.setAttribute("redirectUrl", redirectUrl);			
		return "admin/closeLayer";
	}
}
