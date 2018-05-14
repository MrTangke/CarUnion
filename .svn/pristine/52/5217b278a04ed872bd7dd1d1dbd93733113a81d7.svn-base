package com.car.service;

import java.util.List;

import com.car.entity.user.OrderForm;

public interface AdminOrderFormService {

	int deleteByPrimaryKey(String orderId);

    int insert(OrderForm record);

    int insertSelective(OrderForm record);

    OrderForm selectByPrimaryKey(String orderId);

    List<OrderForm> getOrderFormList();
    
    int updateByPrimaryKeySelective(OrderForm record);

    int updateByPrimaryKey(OrderForm record);

	void updateZF(OrderForm record);

	void updateSJ(OrderForm order);
}
