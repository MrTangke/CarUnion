/**
 * 
 */
package com.car.service;

import java.util.List;

import com.car.entity.car.CycleImage;
import com.car.entity.extra.Video;

/**
 * @author 石晋荣
 * 2018年4月18日  下午10:05:44
 */
public interface AdminExtraService {

	/**
	 * @return
	 */
	List<CycleImage> getAllImgs();

	/**
	 * @return
	 */
	List<Video> getVideos();

	int videoChoice(Integer videoId);

	Video findvideobychoice();

	void insertCycleImg(CycleImage cycleImage);

	CycleImage findCycleImgByImgId(Integer imgId);

	void updateCycleImg(CycleImage cycleImage);

	int deleteCycleImg(Integer imgId);

	int rankimgOrder();

	void insertVideo(Video video);

	Video findVideoByVideoId(Integer videoId);

	void updateVideo(Video video);

	int deleteVideo(Integer videoId);

}
