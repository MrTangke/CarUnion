/**
 * 
 */
package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.user.UserComment;
import com.car.mapper.user.UserCommentMapper;
import com.car.service.CommentService;

/**
 * @author 石晋荣
 * 2018年4月28日  下午2:13:07
 */
@Service
@Transactional
public class CommentServiceImpl implements CommentService{
@Autowired
private UserCommentMapper comMapper;
	/* (non-Javadoc)
	 * @see com.car.service.CommentService#findCarComment(java.lang.String)
	 */
	@Override
	public List<UserComment> findCarComment(String id) {
		return comMapper.findCarComment(Integer.parseInt(id));
	}
	
}
