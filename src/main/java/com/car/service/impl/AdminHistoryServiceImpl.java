package com.car.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.rep.CarRepRel;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.Repository;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.rep.CarRepRelMapper;
import com.car.mapper.rep.CarRepositoryRelMapper;
import com.car.mapper.rep.RepositoryMapper;
import com.car.service.AdminHistoryService;

@Service
@Transactional
public class AdminHistoryServiceImpl implements AdminHistoryService {
  
	@Autowired
	private CarRepositoryRelMapper carRepositoryRelMapper;
	@Autowired
	private CarGoodsMapper carGoodsMapper;
	@Autowired
	private RepositoryMapper RepositoryMapper;
	@Autowired 
	private CarRepRelMapper carRepRelMapper;
	@Override
	public List<CarRepositoryRel> findHistoryList() {
		List<CarRepositoryRel> carRelList = carRepositoryRelMapper.findHistoryList();
		for (CarRepositoryRel car : carRelList) {
			
				CarGoods  carGoods =carGoodsMapper.selectCarNameByCarId(car.getCarId());
			    Repository rep = RepositoryMapper.selectByPrimaryKey(car.getRepId());
			     if (carGoods!=null) {
			    	 car.setCarName(carGoods.getCarName());
				}
			     if (rep!=null) {
			    	 car.setRepName(rep.getRepName());
					}
		
		
		}
		return carRelList;
	}
	@Override
	public List<CarGoods> findCarList() {
		
		return carGoodsMapper.findcarList();
	}
	@Override
	public List<Repository> findRepList() {
		
		return RepositoryMapper.findRepositoryList();
	}
	@Override
	public void outpPutAndInPut(CarRepositoryRel carRep) {
		
		carRepositoryRelMapper.insert(carRep);
		Repository rep= RepositoryMapper.selectByPrimaryKey(carRep.getRepId());
		if(carRep.getStruts()==1){
			CarRepRel carRepRel= carRepRelMapper.findcarRepRel(carRep);
			if (carRepRel==null) {
				carRepRelMapper.insertCarRepRel(carRep);
			}else{
				carRepRel.setCarNum(carRepRel.getCarNum()+carRep.getCarNum());
				carRepRelMapper.updateCarNum(carRepRel);
			}
			carRep.setCarNum(rep.getRepStock()+carRep.getCarNum());
		RepositoryMapper.updateStockByRepId(carRep);	
		}
        if(carRep.getStruts()==2){
        	CarRepRel carRepRel= carRepRelMapper.findcarRepRel(carRep);
    		if (carRepRel==null) {
    			carRepRelMapper.insertCarRepRel(carRep);
    		}else{
    			carRepRel.setCarNum(carRepRel.getCarNum()-carRep.getCarNum());
				carRepRelMapper.updateCarNum(carRepRel);
    		}
        	carRep.setCarNum(rep.getRepStock()-carRep.getCarNum());
        	RepositoryMapper.updateStockByRepId2(carRep);
        	
		}
	}

	
}
