package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.extra.Dictionary;
import com.car.mapper.extra.DictionaryMapper;
import com.car.service.AdminDictionaryService;
@Service
public class AdminDictionaryServiceImpl implements AdminDictionaryService {

	@Autowired
	private DictionaryMapper mapper;
	@Override
	public List<Dictionary> getDictionarylist() {
		return this.mapper.getDictionaryList();
	}

}
