package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.car.entity.extra.Dictionary;
import com.car.service.AdminDictionaryService;

@Controller
@RequestMapping("/adminDictionary")
public class AdminDictionaryController {
	
	@Autowired
	private AdminDictionaryService dicservice; 

	@RequestMapping("/toDictionary")
	public String toDictionary(HttpServletRequest request) {
		List<Dictionary> dictionary = dicservice.getDictionarylist();
		request.setAttribute("dictionary", dictionary);
		return "admin/dictionary/rep_dictionary";
	}
	
}
