package com.car.entity.user;

public class BuyerLevel {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column buyer_level.level_id
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	private Integer levelId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column buyer_level.level_name
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	private String levelName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column buyer_level.level_content
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	private String levelContent;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column buyer_level.level_img
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	private String levelImg;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column buyer_level.level_num
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	private Integer levelNum;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column buyer_level.level_id
	 * @return  the value of buyer_level.level_id
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public Integer getLevelId() {
		return levelId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column buyer_level.level_id
	 * @param levelId  the value for buyer_level.level_id
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public void setLevelId(Integer levelId) {
		this.levelId = levelId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column buyer_level.level_name
	 * @return  the value of buyer_level.level_name
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public String getLevelName() {
		return levelName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column buyer_level.level_name
	 * @param levelName  the value for buyer_level.level_name
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column buyer_level.level_content
	 * @return  the value of buyer_level.level_content
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public String getLevelContent() {
		return levelContent;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column buyer_level.level_content
	 * @param levelContent  the value for buyer_level.level_content
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public void setLevelContent(String levelContent) {
		this.levelContent = levelContent;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column buyer_level.level_img
	 * @return  the value of buyer_level.level_img
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public String getLevelImg() {
		return levelImg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column buyer_level.level_img
	 * @param levelImg  the value for buyer_level.level_img
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public void setLevelImg(String levelImg) {
		this.levelImg = levelImg;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column buyer_level.level_num
	 * @return  the value of buyer_level.level_num
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public Integer getLevelNum() {
		return levelNum;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column buyer_level.level_num
	 * @param levelNum  the value for buyer_level.level_num
	 * @mbggenerated  Mon Apr 23 20:08:27 CST 2018
	 */
	public void setLevelNum(Integer levelNum) {
		this.levelNum = levelNum;
	}

	@Override
	public String toString() {
		return "BuyerLevel [levelId=" + levelId + ", levelName=" + levelName + ", levelContent=" + levelContent
				+ ", levelImg=" + levelImg + ", levelNum=" + levelNum + "]";
	}
	
}