/**
 * 
 */
package com.car.service;

import java.util.List;

import com.car.entity.car.CarImg;

/**
 * @author 石晋荣
 * 2018年4月24日  上午11:43:48
 */
public interface ImgService {
	List<CarImg> getCarImgById(String id);
}
