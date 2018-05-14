package com.car.service;

import java.util.List;

import com.car.entity.manager.Push;

public interface AdminPushService {

	List<Push> toPushList();

	void insertPush(Push push);

	Push findPushByPushId(Integer pushId);

	void updatePush(Push push);

	int deletePush(Integer pushId);

	int pushMessage(String ids, String userIds);

	void pushNewMessage(String userIds, Push push);

}
