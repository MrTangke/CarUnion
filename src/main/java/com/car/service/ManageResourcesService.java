package com.car.service;

import java.util.List;


import com.car.entity.manager.ManagerResources;

public interface ManageResourcesService {

	List<ManagerResources> getManageResourcesList();

	void insertManageResources(ManagerResources res);

	ManagerResources getManageResourcesByresId(Integer resId);

	void updateManageResources(ManagerResources res);

	int deleteManageResources(Integer resId);

	List<ManagerResources> findPid();

	

	

}
