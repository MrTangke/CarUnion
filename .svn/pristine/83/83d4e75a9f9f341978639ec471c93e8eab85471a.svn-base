/**
 * 
 */
package com.car.service;

import java.util.List;

import com.car.entity.user.User;
import com.car.entity.user.UserApply;

/**
 * @author 石晋荣
 * 2018年4月25日  下午6:36:13
 */
public interface UserApplyService {

	/**
	 * @param user
	 * @param phone
	 * @param timea
	 * @param repId
	 * @param name
	 * @param carId
	 */
	void inserForm(User user, String phone, String timea, String repId, String name, String carId);

	/**
	 * @return
	 */
	List<UserApply> getAllApplies();

	/**
	 * @param appId
	 * @return
	 */
	int delApply(String appId);

	/**
	 * @param appId
	 * @return
	 */
	UserApply getApplyById(String appId);
	
	UserApply getApplyByIds(Integer applyId);

	/**
	 * @param apply
	 */
	void update(UserApply apply);

	/**
	 * @param user
	 * @return
	 */
	List<UserApply> getApplyByUserId(User user);

	void updateLL(UserApply apply);

}
