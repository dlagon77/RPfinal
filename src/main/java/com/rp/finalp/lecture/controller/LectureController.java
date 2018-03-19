package com.rp.finalp.lecture.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rp.finalp.assign.model.service.AssignService;
import com.rp.finalp.lecture.model.service.LectureService;
import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;

@Controller
public class LectureController {
	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AssignService assignService;
	
	@RequestMapping(value = "taskList.do", method = RequestMethod.GET)
	public String taskListViewMethod(@RequestParam(value="tutor_no") int tutor_no,Model model,Lecture lecture) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("assignList",assignService.selectTutorAssList(tutor_no));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		return "tutor/taskList";
	}
	
	@RequestMapping(value = "taskDetail.do", method = RequestMethod.GET)
	public String taskDetailViewMethod(@RequestParam(value="ass_no") int ass_no,@RequestParam(value="ass_sub_no") int ass_sub_no,@RequestParam(value="tutor_no") int tutor_no,Model model,Lecture lecture) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("ass_no",ass_no);
		model.addAttribute("ass_sub_no",ass_sub_no);
		model.addAttribute("assignment",assignService.assDetail(ass_no));
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		return "tutor/taskDetail";
	}
	
	@RequestMapping("testDetailView.do")
	public String testDetailViewMethod() {
		return "tutor/testDetailView";
	}
	
	@RequestMapping("lecturePlayList.do")
	public String lecturePlayListView(@RequestParam(value="tutor_no") int tutor_no,@RequestParam(value="mem_no") int mem_no,Model model,Lecture lecture) {
		model.addAttribute("tutor_no", tutor_no);
		model.addAttribute("Lecture",  lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("channelId", lectureService.selectChannelId(tutor_no));
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

	@RequestMapping("classManage.do")
	public String classManageMethod(@RequestParam(value="tutor_no") int tutor_no,Model model) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		List<Member> list = lectureService.applyClassList(tutor_no);
		model.addAttribute("list", list);
		return "tutor/classManage";
	}
	
	@RequestMapping("classManageLecture.do")
	public String classManageLectureMethod(@RequestParam(value="tutor_no") int tutor_no,Model model){
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		return "tutor/classManageLecture";
	}
	
	@RequestMapping("insertLecture.do")
	public void insertLectureMethod(Lecture lecture, Model model) {
		System.out.println(lecture);
		lectureService.insertLecture(lecture);
	}
	
	@RequestMapping("classManageTask.do")
	public String classManageTaskMethod(@RequestParam(value="tutor_no") int tutor_no,Model model) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		List<Lecture> list = lectureService.selectLectureList(tutor_no);
		model.addAttribute("assignList",assignService.selectTutorAssList(tutor_no));
		model.addAttribute("lectureList",list);
		return "tutor/classManageTask";
	}
	
	@RequestMapping("applyClass.do")
	public String applyClassMethod(@RequestParam(value="tutor_no") int tutor_no, Lecture lecture, Model model, HttpServletRequest rq) {
		String selectNum = "select"+rq.getParameter("selectNum");
		String status = rq.getParameter(selectNum);
		
		if(status.equals("수락")) {
			lectureService.applySuccess(lecture);
		}else {
			lectureService.applyFail(lecture);
		}
		model.addAttribute("tutor_no", tutor_no);
		
		return "redirect:classManage.do";
	}
}
