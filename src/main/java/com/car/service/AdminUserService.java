package com.car.service;

import java.util.List;

import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerResources;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.Push;
import com.car.entity.manager.RoleResources;
import com.car.entity.manager.UserRole;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;

public interface AdminUserService {

	Integer addMgUser(ManageUser mu);

	ManageUser login(ManageUser mu);

	/**
	 * @return
	 */
	List<User> getAllUserList();

	/**
	 * @return
	 */
	List<BuyerLevel> getAllLevels();
     //ht 
	int blockUser(Integer userId);

	List<Push> toOldPushList();

	BuyerLevel findLevelById(Integer levelId);

	void updateLevel(BuyerLevel level);

	ManageUser getUserByUsername(String loginName);

	void updateNumByManageId(Integer manageId);

	void updateDateTimeSelectiveByUid(ManageUser userCopy);

	void updateLoginNumByUid(ManageUser userCopy);

	List<ManagerResources> findResList();

	List<UserRole> findRoleByMid(Integer manageId);

	List<RoleResources> findResByRid(Integer roleId);

	ManagerResources findResByResId(Integer resId);


}
