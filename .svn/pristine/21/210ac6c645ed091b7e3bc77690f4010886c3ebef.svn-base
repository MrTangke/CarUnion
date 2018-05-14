package com.car.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class sddfsad {

   public static void main(String[] args) {

		boolean b = false;
		
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//如2016-08-10 20:40  
		
		try {
			//计算时间差
			 String datetimeBefore="2018-03-23 17:34:00";
			long timeBefore = simpleFormat.parse(datetimeBefore).getTime();
			System.out.println(timeBefore);
			long timeNow = new Date().getTime();
			System.out.println(timeNow);
			//    这是间隔时间 毫秒数  		 这是30分钟毫秒数
			b = (long)(timeNow-timeBefore) > (long)(30*60*1000);
			System.out.println(b);
			System.out.println((long)(timeNow-timeBefore));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	
	}
}

