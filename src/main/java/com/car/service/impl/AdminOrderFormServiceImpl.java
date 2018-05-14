package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.user.OrderForm;
import com.car.mapper.user.OrderFormMapper;
import com.car.service.AdminOrderFormService;
@Service
public class AdminOrderFormServiceImpl implements AdminOrderFormService {

	@Autowired
	private OrderFormMapper orderMapper;
	
	@Override
	public int deleteByPrimaryKey(String orderId) {
		// TODO Auto-generated method stub
		return this.orderMapper.deleteByPrimaryKey(Integer.parseInt(orderId));
	}

	@Override
	public int insert(OrderForm record) {
		// TODO Auto-generated method stub
		return this.orderMapper.insert(record);
	}

	@Override
	public int insertSelective(OrderForm record) {
		// TODO Auto-generated method stub
		return this.orderMapper.insertSelective(record);
	}


	@Override
	public int updateByPrimaryKeySelective(OrderForm record) {
		// TODO Auto-generated method stub
		return this.orderMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(OrderForm record) {
		// TODO Auto-generated method stub
		return this.orderMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<OrderForm> getOrderFormList() {
		// TODO Auto-generated method stub
		return this.orderMapper.getOrderFormList();
	}

	@Override
	public OrderForm selectByPrimaryKey(String orderId) {
		return this.orderMapper.selectByPrimaryKey(Integer.parseInt(orderId));
	}

	@Override
	public void updateZF(OrderForm record) {
		record.setOrderStatus(record.getOrderStatus()+1);
		this.orderMapper.updateByPrimaryKey(record);
	}
	
	@Override
	public void updateSJ(OrderForm record) {
		if(record.getOrderStatus()==1) {
			record.setOrderStatus(record.getOrderStatus()+1);
		}
		this.orderMapper.updateByPrimaryKey(record);
	}

}
