package com.car.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerResources;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.ResourcesTree;
import com.car.mapper.manager.ManageUserMapper;
import com.car.mapper.manager.ManagerResourcesMapper;
import com.car.mapper.manager.ManagerRoleMapper;
import com.car.mapper.manager.RoleResourcesMapper;
import com.car.mapper.manager.UserRoleMapper;
import com.car.service.AdminManageRoleService;
@Service
@Transactional
public class AdminManageRoleServiceImpl implements AdminManageRoleService {

	@Autowired
	private ManagerRoleMapper managerRoleMapper;
    @Autowired
    private ManagerResourcesMapper managerResourcesMapper;
    @Autowired
    private ManageUserMapper manageUserMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;
	@Override
	public List<ManagerRole> findManageRoleList() {
		
		List<ManagerRole> managerRoleslist =managerRoleMapper.findManageRoleList();
		for (ManagerRole mr : managerRoleslist) {
			List<ManageUser> mulist= manageUserMapper.finduserbyrid(mr.getRoleId());
			mr.setMuList(mulist);
			List<ManagerResources> mreslist = managerResourcesMapper.findresbyrid(mr.getRoleId());
			mr.setMresList(mreslist);
		}
		return managerRoleslist;
	}

	@Override
	public void insertManageRole(ManagerRole mRole) {
		managerRoleMapper.insert(mRole);
		
	}

	@Override
	public ManagerRole getManageRoleByRoleId(Integer roleId) {
		
		return managerRoleMapper.selectByPrimaryKey(roleId);
	}

	@Override
	public void updateManageRole(ManagerRole mRole) {
		managerRoleMapper.updateByPrimaryKey(mRole);
		
	}

	@Override
	public int deleteManageRole(Integer roleId) {
		try {
			managerRoleMapper.deleteByPrimaryKey(roleId);
			managerResourcesMapper.deleteResByRoleId(roleId);
			userRoleMapper.deleteByRoleId(roleId);
			return 1;
		} catch (Exception e) {
		    return 0;
		}
	}

	@Override
	public List<ResourcesTree> getResourcesTree(Integer roleId) {
		
		return managerResourcesMapper.getResourcesTree(roleId);
	}

	@Override
	public void assignResources(Integer roleId, Integer[] redIds) {
		// 删除
				if (redIds.length > 0) {
					managerResourcesMapper.deleteResByRoleId(roleId);
				}
				// 分配新的权限
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("roleId", roleId);
				map.put("redIds", redIds);
				managerResourcesMapper.insertResourcesByRoleId(map);
				
		
	}
	
	
	
}
