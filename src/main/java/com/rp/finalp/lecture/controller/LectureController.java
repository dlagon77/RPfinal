package com.rp.finalp.lecture.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rp.finalp.assign.model.service.AssignService;
import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.lecture.model.service.LectureService;
import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;
import com.rp.finalp.test.model.service.TestService;
import com.rp.finalp.test.model.vo.Test;

@Controller
public class LectureController {
	@Autowired
	private LectureService lectureService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AssignService assignService;
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value = "taskList.do", method = RequestMethod.GET)
	public String taskListViewMethod(HttpServletRequest request,@RequestParam(value="tutor_no") int tutor_no,@RequestParam(value="mem_no") int mem_no,Model model,Lecture lecture) {
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = memberService.countApplyList(tutor_no);
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("mem_no",mem_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("assignList",assignService.selectTutorAssList(map));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady = memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		return "tutor/taskList";
	}
	
	@RequestMapping(value = "taskDetail.do", method = RequestMethod.GET)
	public String taskDetailViewMethod(@RequestParam(value="ass_no") int ass_no,@RequestParam(value="ass_sub_no") int ass_sub_no,@RequestParam(value="tutor_no") int tutor_no,Model model,Lecture lecture) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("ass_no",ass_no);
		model.addAttribute("ass_sub_no",ass_sub_no);
		Assignment test = assignService.assDetail(ass_no);
		model.addAttribute("assignment",assignService.assDetail(ass_no));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady = memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		
		
		return "tutor/taskDetail";
	}
	
	@RequestMapping(value="submitTaskList.do", method=RequestMethod.GET)
	public String submitTaskList(HttpServletRequest request,Model model,Lecture lecture,Assignment ass) throws IOException {

		int tutor_no = Integer.parseInt(request.getParameter("tutor_no"));
		int ass_no = Integer.parseInt(request.getParameter("ass_no"));
		int ass_sub_no = Integer.parseInt(request.getParameter("ass_sub_no"));
		String ass_cate = request.getParameter("ass_cate");
		int ass_maker = Integer.parseInt(request.getParameter("ass_maker"));

		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = testService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ass_cate", ass_cate);
		map.put("ass_maker",ass_maker);
		
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		int checkSubmit = assignService.checkSubmit(ass);
		model.addAttribute("checkSubmit",checkSubmit);
		
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("ass_no",ass_no);
		model.addAttribute("ass_sub_no",ass_sub_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("submitList",assignService.selectSubmitAss(map));
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady = memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		return "tutor/submitTaskList";
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
		int checkApply=memberService.checkApply(lecture);
		model.addAttribute("checkApply",checkApply);
		int checkReady = memberService.checkReady(lecture);
		model.addAttribute("checkReady",checkReady);
		return "tutor/lecturePlayList";
	}
	
	@RequestMapping("lectureDeatil.do")
	public String lectureDeatilView(@RequestParam(value="videoId") String videoId, Model model,@RequestParam(value="videoTitle") String videoTitle, @RequestParam(value="videoDescription")String videoDescription, @RequestParam(value="videoTime")String videoTime) {
		
		model.addAttribute("videoId", videoId);
		model.addAttribute("videoTitle", videoTitle);
		model.addAttribute("videoDescription", videoDescription);
		model.addAttribute("videoTime", videoTime);
		lectureService.addReadCount(videoId);
		model.addAttribute("Lecture", lectureService.selectReadCount(videoId));
		return "tutor/lectureDetail";
	}

	@RequestMapping("classManage.do")
	public String classManageMethod(@RequestParam(value="tutor_no") int tutor_no,Model model, HttpServletRequest request) {
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = memberService.countApplyList(tutor_no);
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		List<Member> list = memberService.applyClassList(map);
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("list",list);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		model.addAttribute("tutor_no", tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("lectureCount", lectureService.countLectureList(tutor_no));
		
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
		lectureService.insertLecture(lecture);
	}
	
	@RequestMapping("classManageTask.do")
	public String classManageTaskMethod(HttpServletRequest request,@RequestParam(value="tutor_no") int tutor_no,Model model) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		
		
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = assignService.listCount(tutor_no);
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("assignList",assignService.selectTutorAssList(map));
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		System.out.println(startPage);
		System.out.println(endPage);
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
	
	@RequestMapping("classManageTest.do")
	public String classManageTestMethod(@RequestParam(value="tutor_no") int tutor_no,Model model,HttpServletRequest request,Lecture lecture) {
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = testService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		List<Test> list = testService.selectTestList(map);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("testList",list);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		
		return "tutor/classManageTest";
	}
	
	@RequestMapping("classManageStudent.do")
	public String classManageStudentMethod(@RequestParam(value="tutor_no") int tutor_no, Model model, HttpServletRequest request) {
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = memberService.countStudentList(tutor_no);
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		map.put("tutor_no", tutor_no);
		
		List<Member> list = memberService.selectStudentList(map);
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("list",list);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		model.addAttribute("tutor_no", tutor_no);
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		/*List<Member> list = memberService.selectStudentList(tutor_no);*/
		
		return "tutor/classManageStudent";
	}
	
	@RequestMapping(value="deleteClassStudent.do")
	public String deleteClassStudentMethod( Lecture lecture, @RequestParam(value="tutor_no") int tutor_no, Model model) {
		lectureService.deleteClassStudent(lecture);
		model.addAttribute("tutor_no", tutor_no);
		return "redirect:classManageStudent.do";
	}
}
