/**
 * 
 */
package com.car.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.car.entity.car.CarGoods;
import com.car.entity.car.CycleImage;
import com.car.entity.extra.Video;
import com.car.entity.manager.ManageUser;
import com.car.service.AdminCarService;
import com.car.service.AdminExtraService;
import com.car.utils.FilesUtils;
import com.car.utils.MD5Util;


/**
 * @author 石晋荣
 * 2018年4月18日  下午10:02:42
 */
@Controller
@RequestMapping("/adminExtra/")
public class AdminExtraController {
	@Autowired
	private AdminExtraService adminExtraService;
	@Autowired
	private AdminCarService adminCarService;
	/*
	 * 去往轮播图片
	 */
	@RequestMapping("toImg")
	public String toImg(HttpServletRequest request){
		List<CycleImage> images = adminExtraService.getAllImgs();
		request.setAttribute("images", images);
		return "admin/extra/cycle_img";
	}
	/*
	 * 去往视频管理
	 */
	@RequestMapping("toVideo")
	public String toVideo(HttpServletRequest request){
		List<Video> videos = adminExtraService.getVideos();
		request.setAttribute("videos", videos);
		return "admin/extra/video_list";
	}
	/**
	 * ht 选择视频做主页视频
	 * @param videoId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("videoChoice")
	public int videoChoice(Integer videoId){
		int result = adminExtraService.videoChoice(videoId);
		return result;
	}
	/**
	 * 韩涛 去图片添加页面
	 * @param request
	 * @return
	 */
	@RequestMapping("toCycleImgInsert")
	public String toCycleImgInsert(HttpServletRequest request){
		List<CarGoods> carList = adminCarService.findCarId();
		request.setAttribute("carList",carList);
		return "admin/extra/cycle_insert";
	}
	/**
	 * 韩涛 添加图片
	 * @param cycleImage
	 * @param file
	 * @param request
	 * @return
	 */
	@RequestMapping("insertCycleImg")
	public String insertCycleImg(CycleImage cycleImage,MultipartFile file,HttpServletRequest request){
		System.out.println("==========="+file);
		
		String filePath = FilesUtils.FilesUpload_xm(request, file, "/upload");
		cycleImage.setImgAddress(filePath);
		
		System.out.println("==========="+filePath);
		adminExtraService.insertCycleImg(cycleImage);
		
		// 自定义父页面跳转URL
		String redirectUrl = "adminExtra/toImg";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	/**
	 * 韩涛 去修改页面
	 * @param request
	 * @param imgId
	 * @return
	 */
	@RequestMapping("toCycleImgUpdate")
	public String toCycleImgUpdate(HttpServletRequest request,Integer imgId){
		CycleImage cycleImage = adminExtraService.findCycleImgByImgId(imgId);
		request.setAttribute("cycleImage",cycleImage);
		List<CarGoods> carList = adminCarService.findCarId();
		request.setAttribute("carList",carList);
		return "admin/extra/cycle_update";
	}
	/**
	 * 韩涛 修改图片
	 * @param file
	 * @param cycleImage
	 * @param reqeust
	 * @return
	 */
	@RequestMapping("updateCycleImg")
	public String updateCycleImg(MultipartFile file,CycleImage cycleImage, HttpServletRequest reqeust){

		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(reqeust, file, "/upload");
			cycleImage.setImgAddress(filePath);
		}
	
		adminExtraService.updateCycleImg(cycleImage);
		
		// 自定义父页面跳转URL
	
		String redirectUrl = "adminExtra/toImg";
		reqeust.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	/**
	 * ht 删除
	 * @param imgId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteCycleImg")
	public int deleteCycleImg(Integer imgId){
		int result = adminExtraService.deleteCycleImg(imgId);
		return result;
	}
	/**
	 * 韩涛  排序
	 * @return
	 */
	@ResponseBody
	@RequestMapping("rankimgOrder")
	public int rankimgOrder(){
		int result = adminExtraService.rankimgOrder();
		return result;
	}
	/**
	 * ht 去视频添加
	 * @param request
	 * @return
	 */
	@RequestMapping("toVideoInsert")
	public String toVideoInsert(HttpServletRequest request){
		List<CarGoods> carList = adminCarService.findCarId();
		request.setAttribute("carList",carList);
		return "admin/extra/video_insert";
	}
	/**
	 * ht 视频添加
	 * @param request
	 * @param video
	 * @param file
	 * @return
	 */
	@RequestMapping("insertVideo")
	public String insertVideo(HttpServletRequest request,Video video,MultipartFile file){
		String filePath = FilesUtils.FilesUpload_xm(request, file, "/upload");
		video.setVideoUrl(filePath);
		adminExtraService.insertVideo(video);
		// 自定义父页面跳转URL
		String redirectUrl = "adminExtra/toVideo";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	/**
	 * ht 去视频修改
	 * @param request
	 * @param videoId
	 * @return
	 */
	@RequestMapping("toVideoUpdate")
	public String toVideoUpdate(HttpServletRequest request,Integer videoId){
		List<CarGoods> carList = adminCarService.findCarId();
		request.setAttribute("carList",carList);
		Video video = adminExtraService.findVideoByVideoId(videoId);
		request.setAttribute("video",video);
		return "admin/extra/video_update";
	}
	/**
	 * ht 视频修改
	 * @param file
	 * @param video
	 * @param request
	 * @return
	 */
	@RequestMapping("updateVideo")
	public String updateVideo(MultipartFile file,Video video, HttpServletRequest request){

		if(!"".equals(file.getOriginalFilename())){
			String filePath = FilesUtils.FilesUpload_xm(request, file, "/upload");
			
			video.setVideoUrl(filePath);
		}
		adminExtraService.updateVideo(video);
		
		// 自定义父页面跳转URL
		String redirectUrl = "adminExtra/toVideo";
		request.setAttribute("redirectUrl", redirectUrl);	
		return "admin/closeLayer";
	}
	/**
	 * ht 视频删除
	 * @param videoId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("deleteVideo")
	public int deleteVideo(Integer videoId){
		int result=adminExtraService.deleteVideo(videoId);
		return result;
	}
}
