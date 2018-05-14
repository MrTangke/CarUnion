package com.car.service;

import java.util.List;

import com.car.entity.car.CarGoods;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.Repository;


public interface AdminHistoryService {

	List<CarRepositoryRel> findHistoryList();

	List<CarGoods> findCarList();

	List<Repository> findRepList();

	void outpPutAndInPut(CarRepositoryRel carRepRel);

	



}
