package com.car.entity.user;

import java.util.Date;

public class UserCollect {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_collect.car_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    private Integer carId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_collect.user_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user_collect.collect_time
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    private String collectTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_collect.car_id
     *
     * @return the value of user_collect.car_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public Integer getCarId() {
        return carId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_collect.car_id
     *
     * @param carId the value for user_collect.car_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_collect.user_id
     *
     * @return the value of user_collect.user_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_collect.user_id
     *
     * @param userId the value for user_collect.user_id
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user_collect.collect_time
     *
     * @return the value of user_collect.collect_time
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public String getCollectTime() {
        return collectTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user_collect.collect_time
     *
     * @param collectTime the value for user_collect.collect_time
     *
     * @mbggenerated Sun Apr 15 14:39:50 CST 2018
     */
    public void setCollectTime(String collectTime) {
        this.collectTime = collectTime;
    }


}