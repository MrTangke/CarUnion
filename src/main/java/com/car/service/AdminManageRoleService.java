package com.car.service;

import java.util.List;

import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.ResourcesTree;

public interface AdminManageRoleService {

	List<ManagerRole> findManageRoleList();

	void insertManageRole(ManagerRole mRole);

	

	void updateManageRole(ManagerRole mRole);

	int deleteManageRole(Integer roleId);

	List<ResourcesTree> getResourcesTree(Integer roleId);

	void assignResources(Integer roleId, Integer[] redIds);

	ManagerRole getManageRoleByRoleId(Integer roleId);

}
