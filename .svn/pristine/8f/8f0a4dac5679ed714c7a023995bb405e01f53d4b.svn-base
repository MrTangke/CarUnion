package com.car.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.manager.Push;
import com.car.entity.user.User;
import com.car.entity.user.UserPushRel;
import com.car.mapper.manager.PushMapper;
import com.car.mapper.user.UserMapper;
import com.car.mapper.user.UserPushRelMapper;
import com.car.service.AdminPushService;
@Service
@Transactional
public class AdminPushServiceImpl implements AdminPushService {

	@Autowired
	private PushMapper pushMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private UserPushRelMapper userPushRelMapper;
	@Override
	public List<Push> toPushList() {
		
		return pushMapper.toPushList();
	}
	@Override
	public void insertPush(Push push) {
		pushMapper.insert(push);
		
	}
	@Override
	public Push findPushByPushId(Integer pushId) {
	
		return pushMapper.selectByPrimaryKey(pushId);
	}
	@Override
	public void updatePush(Push push) {
		pushMapper.updateByPrimaryKey(push);
		
	}
	@Override
	public int deletePush(Integer pushId) {
		
		return pushMapper.deleteByPrimaryKey(pushId);
	}
	@Override
	public int pushMessage(String ids, String userIds) {
		try {
			
		UserPushRel userPushRel = new UserPushRel();
		if (userIds.length()<1) {
			List<User> userList = userMapper.getAllUserList();
			for (User user : userList) {
				userPushRel.setUserId(user.getUserId());
				String[] idss = ids.trim().split(",");
				for (String id : idss) {
					userPushRel.setPushId(Integer.parseInt(id));
				}
				userPushRel.setDatea(new Date());
				userPushRelMapper.insertSelective(userPushRel);
			}
			
		}else {
			String[] userids = userIds.trim().split(",");
			for (String userId : userids) {
				User user = userMapper.selectByPrimaryKey(Integer.parseInt(userId));
				userPushRel.setUserId(user.getUserId());
				String[] idss = ids.trim().split(",");
				for (String id : idss) {
					userPushRel.setPushId(Integer.parseInt(id));
				}
				userPushRel.setDatea(new Date());
				userPushRelMapper.insertSelective(userPushRel);
			}
			
		}
		   return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	@Override
	public void pushNewMessage(String userIds, Push push) {
		pushMapper.insertNewPush(push);
		UserPushRel userPushRel = new UserPushRel();
		if (userIds.length()<1) {
			List<User> userList = userMapper.getAllUserList();
			for (User user : userList) {
				userPushRel.setUserId(user.getUserId());
				userPushRel.setPushId(push.getPushId());
				userPushRel.setDatea(new Date());
				userPushRelMapper.insertSelective(userPushRel);
			}
			
		}else {
			String[] userids = userIds.trim().split(",");
			for (String userId : userids) {
				User user = userMapper.selectByPrimaryKey(Integer.parseInt(userId));
				userPushRel.setUserId(user.getUserId());
				userPushRel.setPushId(push.getPushId());
				userPushRel.setDatea(new Date());
				userPushRelMapper.insertSelective(userPushRel);
			}
			
		}
	}
}
