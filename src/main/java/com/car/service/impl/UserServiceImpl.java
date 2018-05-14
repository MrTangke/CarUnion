package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.utils.MD5Util;
import com.car.entity.car.CarGoods;
import com.car.entity.manager.Push;
import com.car.entity.user.BuyerLevel;
import com.car.entity.user.User;
import com.car.entity.user.UserComment;
import com.car.entity.user.UserLevelRel;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.manager.PushMapper;
import com.car.mapper.user.BuyerLevelMapper;
import com.car.mapper.user.UserCommentMapper;
import com.car.mapper.user.UserMapper;
import com.car.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{
@Autowired(required=false)
private UserMapper userMapper;
@Autowired(required=false)
private BuyerLevelMapper buyerLevelMapper;
@Autowired(required=false)
private PushMapper pushMapper;
@Autowired(required=false)
private UserCommentMapper userCommentMapper;
@Autowired(required=false)
private CarGoodsMapper carGoodsMapper;
	@Override
	public User getUserByUsername(String userName) {
		return userMapper.getUserByUsername(userName);
	}
	@Override
	public void updateNumByUid(Integer userId) {
		userMapper.updateNumByUid(userId);
		
	}
	@Override
	public void updateDateTimeSelectiveByUid(User userCopy) {
		userMapper.updateDateTimeSelectiveByUid(userCopy);
		
	}
	@Override
	public void updateLoginNumByUid(User userCopy) {
		userMapper.updateLoginNumByUid(userCopy);
		
	}
/*	@Override
	public int register(User user) {
		// TODO Auto-generated method stub
		//对密码进行加密
		String md5 = MD5Util.MD5(user.getUserPwd());
		user.setUserPwd(md5);
		userMapper.insert(user);

		
	}
	*/
	@Override
	public Integer register(User user) {
		//对密码进行加密
		String md5 = MD5Util.MD5(user.getUserPwd());
		user.setUserPwd(md5);
		return userMapper.insert(user);
	}
	@Override
	public User loginn(User user) {
		// TODO Auto-generated method stub
		return userMapper.loginn(user);
	}
	@Override
	public User selectUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.selectUser(user);
	}
	
	//修改用户信息
	@Override
	public void updateUser(User user) {
		 userMapper.updateByUser(user);
		
	}
	@Override
	public List<Push> selectPush(User user) {
		// TODO Auto-generated method stub
		return pushMapper.selectPuthTb(user);
	}
	@Override
	public List<UserComment> SelectUserComment(User user) {
		// TODO Auto-generated method stub
		return userCommentMapper.selectUserComment(user);
	}
	@Override
	public List<CarGoods> selectCollect(User user) {
		// TODO Auto-generated method stub
		return carGoodsMapper.selectCollect(user);
	}
	@Override
	public List<User> getAllUserLists(Integer userId) {
		// TODO Auto-generated method stub
		return this.userMapper.getAllUserLists(userId);
	}
	@Override
	public User selectPwd(User user) {
		String md5 = MD5Util.MD5(user.getUserPwd());
		user.setUserPwd(md5);
		return userMapper.selectPwd(user);
	}
	@Override
	public void updatePwd(User user) {
		String md5 = MD5Util.MD5(user.getUserPwd());
		user.setUserPwd(md5);
		userMapper.updatePwd(user);
		
	}
	/* (non-Javadoc)
	 * @see com.car.service.UserService#selSameUser(com.car.entity.user.User)
	 */
	@Override
	public User selSameUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.selSameUser(user);
	}

}
