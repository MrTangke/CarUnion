package com.car.mapper.manager;

import java.util.List;

import com.car.entity.manager.RoleResources;

public interface RoleResourcesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manage_role_resources
     *
     * @mbggenerated Sun Apr 15 14:36:16 CST 2018
     */
    int insert(RoleResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manage_role_resources
     *
     * @mbggenerated Sun Apr 15 14:36:16 CST 2018
     */
    int insertSelective(RoleResources record);

	List<RoleResources> findResByRid(Integer roleId);


}