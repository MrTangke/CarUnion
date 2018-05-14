/**
 * 
 */
package com.car.service;

import java.util.List;

/**
 * @author 石晋荣
 * 2018年4月29日  上午10:37:59
 */
public interface POIService {

	/**
	 * @param ids
	 */
	void export(String ids);

	/**
	 * @param carGoods
	 * @return
	 */
	int insertAll(List<Object> carGoods);

}
