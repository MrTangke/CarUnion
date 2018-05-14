package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.manager.ManagerResources;
import com.car.mapper.manager.ManagerResourcesMapper;
import com.car.service.ManageResourcesService;
@Service
@Transactional
public class ManageResourcesServiceImpl implements ManageResourcesService {

	@Autowired
	private ManagerResourcesMapper managerResourcesMapper;
	@Override
	public List<ManagerResources> getManageResourcesList() {
		
		return managerResourcesMapper.getManageResourcesList();
	}

	@Override
	public void insertManageResources(ManagerResources res) {
		managerResourcesMapper.insert(res);
		
	}

	@Override
	public ManagerResources getManageResourcesByresId(Integer resId) {
		
		return managerResourcesMapper.selectByPrimaryKey(resId);
	}

	@Override
	public void updateManageResources(ManagerResources res) {
		managerResourcesMapper.updateByPrimaryKey(res);
		
	}

	@Override
	public int deleteManageResources(Integer resId) {
		
		return managerResourcesMapper.deleteByPrimaryKey(resId);
	}

	@Override
	public List<ManagerResources> findPid() {
		
		return managerResourcesMapper.findPid();
	}

}
