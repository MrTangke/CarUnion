/**
 * 
 */
package com.car.service;

/**
 * @author 石晋荣
 * 2018年4月25日  下午3:58:05
 */
public interface UserCollectService {

	/**
	 * @param carId
	 * @param userId
	 */
	void addCollect(String carId, String userId);

	/**
	 * @param carId
	 * @param string
	 */
	void delCollect(String carId, String string);

}
