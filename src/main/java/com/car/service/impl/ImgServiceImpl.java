/**
 * 
 */
package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarImg;
import com.car.mapper.car.CarImgMapper;
import com.car.service.ImgService;

/**
 * @author 石晋荣
 * 2018年4月24日  上午11:44:07
 */
@Service
@Transactional
public class ImgServiceImpl implements ImgService{
	@Autowired
	private CarImgMapper carImgMapper;
	/* (non-Javadoc)
	 * @see com.car.service.ImgService#getCarImgById(java.lang.String)
	 */
	@Override
	public List<CarImg> getCarImgById(String id) {
		// TODO Auto-generated method stub
		return carImgMapper.toCarImgList(Integer.parseInt(id));
	}
	
}
