package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.rep.CarRepRel;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.RepDistrict;
import com.car.entity.rep.Repository;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.rep.CarRepRelMapper;
import com.car.mapper.rep.CarRepositoryRelMapper;
import com.car.mapper.rep.RepDistrictMapper;
import com.car.mapper.rep.RepositoryMapper;
import com.car.service.AdminRepositoryService;
@Service
@Transactional
public class AdminRepositoryServiceImpl implements AdminRepositoryService {
    
	@Autowired
	private RepositoryMapper repositoryMapper;
	@Autowired
	private RepDistrictMapper repDistrictMapper;
	@Autowired
	private CarRepositoryRelMapper carRepositoryRelMapper;
	@Autowired
	private CarGoodsMapper carGoodsMapper;
	@Autowired
	private CarRepRelMapper carRepRelMapper;
	@Override
	public List<Repository> findRepositoryList() {
		List<Repository> repList = repositoryMapper.findRepositoryList();
		for (Repository rep : repList) {
			if(rep.getDisId()!=null){
			RepDistrict dis = repDistrictMapper.selectByPrimaryKey(rep.getDisId());
		    rep.setDisName(dis.getDisName());
			}
		}
		return repList;
	}
	@Override
	public List<RepDistrict> findDistrictList() {
		
		return repDistrictMapper.findDistrictList();
	}
	@Override
	public void insertRepository(Repository rep) {
		repositoryMapper.insert(rep);
		
	}
	@Override
	public Repository findRepById(Integer repId) {
		
		return repositoryMapper.selectByPrimaryKey(repId);
	}
	@Override
	public void updateRepository(Repository rep) {
		repositoryMapper.updateByPrimaryKey(rep);
		
	}
	@Override
	public int updateRepository(Integer repId) {
		
		return repositoryMapper.deleteByPrimaryKey(repId);
	}
	@Override
	public void insertRepDistrict(RepDistrict district) {
		repDistrictMapper.insert(district);
		
	}
	@Override
	public RepDistrict findDisById(Integer disId) {
		
		return repDistrictMapper.selectByPrimaryKey(disId);
	}
	@Override
	public void updateRepDistrict(RepDistrict dis) {
		repDistrictMapper.updateByPrimaryKey(dis);
		
	}
	@Override
	public int deleteRepDistrict(Integer disId) {
	
		return repDistrictMapper.deleteByPrimaryKey(disId);
	}
	@Override
	public List<CarRepRel> toCarMessage(Integer repId) {
		List<CarRepRel> carRepList = carRepRelMapper.findCarRepRelList(repId);
		for (CarRepRel carRep : carRepList) {
			CarGoods car = carGoodsMapper.selectByPrimaryKey(carRep.getCarId());
	        carRep.setCarName(car.getCarName());
		}
		return carRepList;
	}

}
