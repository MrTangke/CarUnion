package com.car.service.impl;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.UserRole;
import com.car.mapper.manager.ManageUserMapper;
import com.car.mapper.manager.ManagerRoleMapper;
import com.car.mapper.manager.UserRoleMapper;
import com.car.service.AdminManageService;
import com.car.utils.MD5Util;
@Service
@Transactional
public class AdminManageServiceImpl implements AdminManageService {

	@Autowired
	private ManageUserMapper manageUserMapper;
	@Autowired
	private UserRoleMapper userRoleMapper;
	@Autowired
	private ManagerRoleMapper managerRoleMapper;
	@Override
	public List<ManageUser> findManageUserList() {
		List<ManageUser> muList = manageUserMapper.findManageUserList();
		for (ManageUser mu : muList) {
			String roleNames = "";
		  List<UserRole> urList =	userRoleMapper.findRoleByManageId(mu.getManageId());
		    for (UserRole ur : urList) {
		    	if(mu.getManageId()==ur.getManageId()){
				ManagerRole mRole= managerRoleMapper.findmRollebyRoleId(ur.getRoleId());
		        roleNames +=","+mRole.getRoleName();
		    	}
		    }
		    if(roleNames!=""){
		    	mu.setRoleName(roleNames.substring(1));
		    }
		   
		}
		 return muList;
		
	}
	@Override
	public void insertManageUser(ManageUser mUser) {
		mUser.setLoginNum(0);
		String format = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(new Date());
		mUser.setLoginTime(format);
		manageUserMapper.insert(mUser);
		UserRole userRole = new UserRole();
		userRole.setManageId(mUser.getManageId());
		userRole.setRoleId(mUser.getRoleId());
		userRoleMapper.insert(userRole);
	}
	@Override
	public ManageUser getManageUserByUserId(Integer manageId) {
		
		return manageUserMapper.selectByPrimaryKey(manageId);
	}
	@Override
	public void updateManageUser(ManageUser mUser) {
		mUser.setLoginNum(0);
		String format = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm").format(new Date());
		mUser.setLoginTime(format);
		manageUserMapper.updateByPrimaryKey(mUser);
	}
	@Override
	public int deleteManageUser(Integer manageId) {
		try {
			manageUserMapper.deleteByPrimaryKey(manageId);
			userRoleMapper.deleteByManageId(manageId);
			return 1;
		} catch (Exception e) {
			
			return 0;
		}
		
	}
	@Override
	public Integer LoginPwdInit(String ids) {
		ManageUser manageUser = new ManageUser();
		String[] mids = ids.trim().split(",");
		for (String mid : mids) {
			manageUser.setManageId(Integer.parseInt(mid));
		}
	    manageUser.setLoginPwd(MD5Util.MD5("000"));
	    
	    	Integer i = manageUserMapper.updateLoginPwdInit(manageUser);
	
	  return i;
		 
	}
	@Override
	public Integer appointManageRole(Integer manageId, String roleIds) {
		
		if (roleIds.length() > 0) {
			userRoleMapper.deleteByManageId(manageId);
		}
		// 分配新的权限
		try {
			
		
		UserRole userRole = new UserRole();
		userRole.setManageId(manageId);
		String[] roleids = roleIds.trim().split(",");
		for (String roleId : roleids) {
			userRole.setRoleId(Integer.parseInt(roleId));
			userRoleMapper.insert(userRole);
		}
		return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	@Override
	public int stopManageUser(Integer manageId) {
		
		return manageUserMapper.stopManageUser(manageId);
	}
	@Override
	public int enableManageUser(String ids) {
		String[] manageIds = ids.trim().split(",");
		try {
		for (String manageId : manageIds) {
				manageUserMapper.enableManageUser(Integer.parseInt(manageId));
		}
		return 1;
			} catch (Exception e) {
		return 0;
			}
			
		}
		
}
	


