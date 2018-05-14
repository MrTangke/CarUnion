package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.Producer;
import com.car.mapper.car.CarBrandModelMapper;
import com.car.mapper.car.ProducerMapper;
import com.car.service.AdminProducerService;
@Service
@Transactional
public class AdminProducerServiceImpl implements AdminProducerService {

	@Autowired
	private ProducerMapper producerMapper;
	@Autowired
	private CarBrandModelMapper carBrandModelMapper;
	@Override
	public List<Producer> findProducerList() {
		
		return producerMapper.findProducerList();
	}

	@Override
	public void insertProducer(Producer producer) {
	    producerMapper.insert(producer);
	}

	@Override
	public Producer findProducerByProId(Integer proId) {
		
		return producerMapper.selectByPrimaryKey(proId);
	}

	@Override
	public void updateProducer(Producer producer) {
		producerMapper.updateByPrimaryKey(producer);
	}

	@Override
	public int deleteProducer(Integer proId) {
		try {
			producerMapper.deleteByPrimaryKey(proId);
			carBrandModelMapper.updateByProId(proId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}

}
