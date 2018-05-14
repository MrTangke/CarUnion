package com.car.service;

import java.util.List;

import com.car.entity.rep.CarRepRel;
import com.car.entity.rep.CarRepositoryRel;
import com.car.entity.rep.RepDistrict;
import com.car.entity.rep.Repository;

public interface AdminRepositoryService {

	List<Repository> findRepositoryList();

	List<com.car.entity.rep.RepDistrict> findDistrictList();

	void insertRepository(Repository rep);

	Repository findRepById(Integer repId);

	void updateRepository(Repository rep);

	int updateRepository(Integer repId);

	void insertRepDistrict(RepDistrict district);

	RepDistrict findDisById(Integer disId);

	void updateRepDistrict(RepDistrict dis);

	int deleteRepDistrict(Integer disId);

	List<CarRepRel> toCarMessage(Integer repId);



}
