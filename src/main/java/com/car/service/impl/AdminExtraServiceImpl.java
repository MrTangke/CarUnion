
package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.car.entity.car.CarGoods;
import com.car.entity.car.CycleImage;
import com.car.entity.extra.Video;
import com.car.mapper.car.CarGoodsMapper;
import com.car.mapper.car.CycleImageMapper;
import com.car.mapper.extra.VideoMapper;
import com.car.service.AdminExtraService;


@Service
@Transactional
public class AdminExtraServiceImpl implements AdminExtraService{
@Autowired
private CycleImageMapper cycleImageMapper;
@Autowired
private VideoMapper videoMapper;
@Autowired
private CarGoodsMapper carGoodsMapper;
	/* (non-Javadoc)
	 * @see com.car.service.AdminExtraService#getAllImgs()
	 */
	@Override
	public List<CycleImage> getAllImgs() {
		List<CycleImage> cList = cycleImageMapper.getAllImgs();
		
		for (CycleImage cycleImage : cList) {
			if(cycleImage.getCarId()!=null){
			CarGoods carGoods = carGoodsMapper.selectCarNameByCarId(cycleImage.getCarId());
		    cycleImage.setCarName(carGoods.getCarName());	
			}
		}
		return cList;
	}
	/* (non-Javadoc)
	 * @see com.car.service.AdminExtraService#getVideos()
	 */
	@Override
	public List<Video> getVideos() {
		// TODO Auto-generated method stub
		return videoMapper.getVideos();
	}
	//ht 
	@Override
	public int videoChoice(Integer videoId) {
		try {
			videoMapper.videoNoChoice();
			videoMapper.videoChoice(videoId);
			return 1;
		} catch (Exception e) {
			return 0;
		}
		
	}
	@Override
	public Video findvideobychoice() {
		
		return videoMapper.findvideobychoice();
	}
	@Override
	public void insertCycleImg(CycleImage cycleImage) {
		cycleImageMapper.insert(cycleImage);	
	}
	@Override
	public CycleImage findCycleImgByImgId(Integer imgId) {
		
		return cycleImageMapper.selectByPrimaryKey(imgId);
	}
	@Override
	public void updateCycleImg(CycleImage cycleImage) {
		cycleImageMapper.updateByPrimaryKey(cycleImage);
	}
	@Override
	public int deleteCycleImg(Integer imgId) {
		
		return cycleImageMapper.deleteByPrimaryKey(imgId);
	}
	@Override
	public int rankimgOrder() {
		try {
			
		    List<CycleImage> cycleImages = cycleImageMapper.getAllImgs();
		    for (CycleImage cycleImage : cycleImages) {
				cycleImage.setImgOrder(cycleImage.getImgId());
				cycleImageMapper.rankimgOrder(cycleImage);
			}
			return 1;
		} catch (Exception e) {
		    return 0;
		}
		
	}
	@Override
	public void insertVideo(Video video) {
		videoMapper.insert(video);
	}
	@Override
	public Video findVideoByVideoId(Integer videoId) {
		
		return videoMapper.selectByPrimaryKey(videoId);
	}
	@Override
	public void updateVideo(Video video) {
		videoMapper.updateByPrimaryKey(video);
		
	}
	@Override
	public int deleteVideo(Integer videoId) {
	
		return videoMapper.deleteByPrimaryKey(videoId);
	}

}
