package com.rp.finalp.lecture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping("tutorListView.do")
	public String tutorListViewMethod() {
		return "tutor/tutorListView";
	}
	
}
