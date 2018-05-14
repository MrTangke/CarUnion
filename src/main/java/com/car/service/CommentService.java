/**
 * 
 */
package com.car.service;

import java.util.List;

import com.car.entity.user.UserComment;

/**
 * @author 石晋荣
 * 2018年4月28日  下午2:12:56
 */
public interface CommentService {

	/**
	 * @param id
	 */
	List<UserComment> findCarComment(String id);

}
