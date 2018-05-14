package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.druid.sql.ast.statement.SQLIfStatement.Else;
import com.car.entity.manager.ManageUser;
import com.car.entity.manager.ManagerResources;
import com.car.entity.manager.ManagerRole;
import com.car.entity.manager.Push;
import com.car.entity.manager.RoleResources;
import com.car.entity.manager.UserRole;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;
import com.car.mapper.manager.ManageUserMapper;
import com.car.mapper.manager.ManagerResourcesMapper;
import com.car.mapper.manager.PushMapper;
import com.car.mapper.manager.RoleResourcesMapper;
import com.car.mapper.manager.UserRoleMapper;
import com.car.mapper.user.BuyerLevelMapper;
import com.car.mapper.user.UserMapper;
import com.car.service.AdminUserService;
import com.car.utils.MD5Util;

@Service
@Transactional
public class AdminUserServiceImpl  implements AdminUserService{
@Autowired
private ManageUserMapper mumapper;
@Autowired
private BuyerLevelMapper lvMapper;
@Autowired
private UserMapper userMapper;
@Autowired
private ManagerResourcesMapper managerResourcesMapper;
@Autowired
private PushMapper pushMapper;
@Autowired
private UserRoleMapper userRoleMapper;
@Autowired
private RoleResourcesMapper roleResourcesMapper;
@Override
public Integer addMgUser(ManageUser mu) {
	//对密码进行加密
		/*	String md5 = MD5Util.MD5(mu.getLoginPwd());
			mu.setLoginPwd(md5);*/
		
	return mumapper.insertt(mu);
}
@Override
public ManageUser login(ManageUser mu) {
	
	return mumapper.login(mu);
}
	/* (non-Javadoc)
	 * @see com.car.service.AdminUserService#getAllUserList()
	 * 韩涛2018-4-21 13:52:36修改
	 */
	@Override
	public List<User> getAllUserList() {
		List<User> userList = userMapper.getAllUserList();
		
		for (User user : userList) {
			Integer userLevelNum = user.getUserLevelNum();
			BuyerLevel level1 = lvMapper.selectByKey(1);
			BuyerLevel level2 = lvMapper.selectByKey(2);
			BuyerLevel level3 = lvMapper.selectByKey(3);
			BuyerLevel level4 = lvMapper.selectByKey(4);
			BuyerLevel level5 = lvMapper.selectByKey(5);
				
				if(userLevelNum<=level1.getLevelNum()){
					user.setLevel(level1.getLevelName());
				}else if (level1.getLevelNum()<userLevelNum&userLevelNum<=level2.getLevelNum()) {
					user.setLevel(level2.getLevelName());
				}else if (level2.getLevelNum()<userLevelNum&userLevelNum<=level3.getLevelNum()) {
					user.setLevel(level3.getLevelName());
				}else if (level3.getLevelNum()<userLevelNum&userLevelNum<=level4.getLevelNum()) {
					user.setLevel(level4.getLevelName());
				}else if(userLevelNum>level4.getLevelNum()){
					user.setLevel(level5.getLevelName());
				}
			
			
		}
		return userList;
	}
	/* (non-Javadoc)
	 * @see com.car.service.AdminUserService#getAllLevels()
	 */
	@Override
	public List<BuyerLevel> getAllLevels() {
		// TODO Auto-generated method stub
		return lvMapper.getAllLevels();
	}
	//ht 拉黑用户
	@Override
	public int blockUser(Integer userId) {
		
		return userMapper.blockUser(userId);
	}
	//ht 去旧消息列表
	@Override
	public List<Push> toOldPushList() {
		
		return pushMapper.toPushList();
	}
	@Override
	public BuyerLevel findLevelById(Integer levelId) {
	
		return lvMapper.selectByPrimaryKey(levelId);
	}
	@Override
	public void updateLevel(BuyerLevel level) {
		lvMapper.updateByPrimaryKey(level);
		
	}
	@Override
	public ManageUser getUserByUsername(String loginName) {
		
		return mumapper.getUserByUsername(loginName);
	}
	@Override
	public void updateNumByManageId(Integer manageId) {
		mumapper.updateNumByManageId(manageId);
		
	}
	@Override
	public void updateDateTimeSelectiveByUid(ManageUser userCopy) {
		mumapper.updateDateTimeSelectiveByUid(userCopy);
		
	}
	@Override
	public void updateLoginNumByUid(ManageUser userCopy) {
		mumapper.updateLoginNumByUid(userCopy);
		
	}
	@Override
	public List<ManagerResources> findResList() {
		
		return managerResourcesMapper.getManageResourcesList();
	}
	@Override
	public List<UserRole> findRoleByMid(Integer manageId) {
		
		return userRoleMapper.findRoleByManageId(manageId);
	}
	@Override
	public List<RoleResources> findResByRid(Integer roleId) {
		
		return roleResourcesMapper.findResByRid(roleId);
	}
	@Override
	public ManagerResources findResByResId(Integer resId) {
		
		return managerResourcesMapper.selectByPrimaryKey(resId);
	}



	
	
	
}
