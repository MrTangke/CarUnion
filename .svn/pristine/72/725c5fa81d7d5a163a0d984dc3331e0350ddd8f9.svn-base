package com.car.service;

import java.util.List;

import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerRole;

public interface AdminManageService {

	List<ManageUser> findManageUserList();

	void insertManageUser(ManageUser mUser);

	ManageUser getManageUserByUserId(Integer manageId);

	void updateManageUser(ManageUser mUser);

	int deleteManageUser(Integer manageId);

	Integer LoginPwdInit(String ids);

	Integer appointManageRole(Integer manageId, String roleIds);

	int stopManageUser(Integer manageId);

	int enableManageUser(String ids);

}
