package com.car.service;

import java.util.List;

import com.car.entity.car.CarGoods;
import com.car.entity.manager.Push;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;
import com.car.entity.user.UserComment;

public interface UserService {

	User getUserByUsername(String userName);

	void updateNumByUid(Integer userId);

	void updateDateTimeSelectiveByUid(User userCopy);

	void updateLoginNumByUid(User userCopy);

	Integer register(User user);

	User loginn(User user);

	User selectUser(User user);

	void updateUser(User user);

	List<Push> selectPush(User user);

	List<UserComment> SelectUserComment(User user);

	List<CarGoods> selectCollect(User user);
	
	List<User> getAllUserLists(Integer userId);
	
	

	User selectPwd(User user);

	void updatePwd(User user);

	/**
	 * @param user
	 * @return
	 */
	User selSameUser(User user);

	



}
