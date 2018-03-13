package com.rp.finalp.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rp.finalp.lecture.model.service.LectureService;

@Controller
public class LectureController {
	@Autowired
	private LectureService lectureService;
	
	@RequestMapping(value = "taskList.do", method = RequestMethod.GET)
	public String taskListViewMethod() {
		return "tutor/taskList";
	}
	
	@RequestMapping(value = "taskDetail.do", method = RequestMethod.GET)
	public String taskDetailViewMethod() {
		return "tutor/taskDetail";
	}
	
	@RequestMapping(value = "tutorHome.do", method = RequestMethod.GET)
	public String tutorHomeMethod() {
		return "tutor/tutorHome";
	}
	
	@RequestMapping("testDetailView.do")
	public String testDetailViewMethod() {
		return "tutor/testDetailView";
	}
	
	@RequestMapping("lecturePlayList.do")
	public String lecturePlayListView() {	
		return "tutor/lecturePlayList";
	}
	
	@RequestMapping("lectureDeatil.do")
	public String lectureDeatilView(@RequestParam(value="videoId") String videoId, Model model,@RequestParam(value="videoTitle") String videoTitle) {
		
		model.addAttribute("videoId", videoId);
		model.addAttribute("videoTitle", videoTitle);
		lectureService.addReadCount(videoId);
		model.addAttribute("Lecture", lectureService.selectReadCount(videoId));
		return "tutor/lectureDetail";
	}
	
}
