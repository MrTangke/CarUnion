/**
 * 
 */
package com.car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.car.CarGoods;
import com.car.entity.car.CarGoodsPOI;
import com.car.service.POIService;
import com.car.utils.ExcelReader;

/**
 * @author 石晋荣
 * 2018年4月29日  上午10:01:35
 */
@Controller
@RequestMapping("/poi/")
public class POIController {
	@Autowired
	private POIService poiService;
	@ResponseBody
	@RequestMapping("exportData")
	public String export(String ids){
		try {
			poiService.export(ids);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ResponseBody
	@RequestMapping("importData")
	public String importData(MultipartFile excelFile,HttpServletRequest request) throws IOException{
			List<Object> carGoods = ExcelReader.excelReader(excelFile, new CarGoodsPOI(),"/upload/excel", request);
			int i = poiService.insertAll(carGoods);

		
		
		return null;
	}
}
