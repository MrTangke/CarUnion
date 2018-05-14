/**
 * 
 */
package com.car.service.impl;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.mapper.car.CarGoodsMapper;
import com.car.service.POIService;

/**
 * @author 石晋荣
 * 2018年4月29日  上午10:38:10
 */
@Transactional
@Service
public class POISerivceImpl implements POIService{
	@Autowired
	private CarGoodsMapper carMapper;
	/* (non-Javadoc)
	 * @see com.car.service.POIService#export(java.lang.String)
	 */
	@Override
	public void export(String ids) {
		//根据ids查list
				List<CarGoods> cars = carMapper.getCarsByIds(ids);
				try {
					XSSFWorkbook wb = new XSSFWorkbook();
				    //工作表
				    XSSFSheet sheet = wb.createSheet("汽车列表");
				    //标头行，代表第一行
				    XSSFRow header=sheet.createRow(0);
				    //创建单元格，0代表第一行第一列
				    XSSFCell cell0=header.createCell(0);
				    cell0.setCellValue("汽车ID");
				    header.createCell(1).setCellValue("汽车名称");
				    header.createCell(2).setCellValue("价格(万元)");  
				    header.createCell(3).setCellValue("油耗");
				    header.createCell(4).setCellValue("配置");  
				    header.createCell(5).setCellValue("排量");
				    header.createCell(6).setCellValue("时速");
				    header.createCell(7).setCellValue("状态");
				    header.createCell(8).setCellValue("安全性");
				    header.createCell(9).setCellValue("上市时间");
				    header.createCell(10).setCellValue("质保");
				    header.createCell(11).setCellValue("热度");
				    header.createCell(12).setCellValue("收藏量");
				    header.createCell(13).setCellValue("汽车主图");
				    //单元格内容
				    for (int i = 1; i <= cars.size(); i++) {
				    	XSSFRow row = sheet.createRow(i);
						row.createCell(0).setCellValue(cars.get(i-1).getCarId());
						row.createCell(1).setCellValue(cars.get(i-1).getCarName());
						row.createCell(2).setCellValue(cars.get(i-1).getCarPrice());
						row.createCell(3).setCellValue(cars.get(i-1).getCarOilwear());
						row.createCell(4).setCellValue(cars.get(i-1).getConfiguration());
						row.createCell(5).setCellValue(cars.get(i-1).getCarCc());
						row.createCell(6).setCellValue(cars.get(i-1).getCarSpeed());
						row.createCell(7).setCellValue(cars.get(i-1).getCarStatus());
						row.createCell(8).setCellValue(cars.get(i-1).getCarWarranty());
						row.createCell(9).setCellValue(cars.get(i-1).getCarDatea());
						row.createCell(10).setCellValue(cars.get(i-1).getCarWarranty());
						row.createCell(11).setCellValue(cars.get(i-1).getCarHeat());
						row.createCell(12).setCellValue(cars.get(i-1).getCarColNum());
						row.createCell(13).setCellValue(cars.get(i-1).getCarImg());
					}
				    //设置列的宽度
				    //getPhysicalNumberOfCells()代表这行有多少包含数据的列
				    for(int i=0;i<header.getPhysicalNumberOfCells();i++){
				     //POI设置列宽度时比较特殊，它的基本单位是1/255个字符大小，
				     //因此我们要想让列能够盛的下20个字符的话，就需要用255*20
				     sheet.setColumnWidth(i, 255*10);
				    }
				    //设置行高，行高的单位就是像素，因此30就是30像素的意思
				    header.setHeightInPoints(30);
				    //上面设置好了内容，我们当然是要输出到某个文件的，输出就需要有输出流
				    Date date = new Date();
				    SimpleDateFormat dateFormat= new SimpleDateFormat("yyyyMMdd hhmm");
				    FileOutputStream fos= new FileOutputStream("e:/Desktop/"+dateFormat.format(date)+"导出列表.xlsx");
				    //向指定文件写入内容
				    wb.write(fos);
				    fos.close();  	
				} catch (Exception e) {
					e.printStackTrace();
				}		
		
	}
	/* (non-Javadoc)
	 * @see com.car.service.POIService#insertAll(java.util.List)
	 */
	@Override
	public int insertAll(List<Object> carGoods) {
		try {
			carGoods.remove(0);
			carMapper.insertAll(carGoods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
}
