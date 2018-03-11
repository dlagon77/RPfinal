package com.rp.finalp.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rp.finalp.member.model.vo.Member;
import com.rp.finalp.mypage.model.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService mypService;
	
	/* 헤더 -  프로필페이지로 이동 - 기본값 프로필보기 */
	@RequestMapping("/profpage.do")
	public String moveToStuprofile(Model model, HttpSession session) {
		if(session !=null) {
			Member member = (Member)session.getAttribute("loginUser");
			model.addAttribute("Member", member);
			return "mypage/profilemodify";
		}
		else {
			return "home";
		}
	}
	
/*	@RequestMapping("/stumypage.do")
	public String moveToStumypage(Model model, HttpSession session) {
		if(session !=null) {
			Member member = (Member)session.getAttribute("loginUser");
			model.addAttribute("Member", member);
			return "mypage/stusubscribe";
		}
		else {
			return "home";
		}
	}*/
	
	
/*	@RequestMapping("/qbDetail.do")	
	public String qbdetailMethod(Model model, int q_no){
		model.addAttribute("qbDetail", qbService.selectqBoardOne(q_no));
		return "board/QnaBoardDetail";
	}*/
	
	/* 수강생 마이페이지 - 구독중인 강사 페이지로 이동 */
	/*@RequestMapping("/stusubsc.do")*/
	@RequestMapping("/stumypage.do")
	public String moveToStumypagesubscribe(Model model, int mem_no) {
		model.addAttribute("mysubsc", mypService.mysubsclist(mem_no));
		return "mypage/stusubscribe";
	}
	
	/* 수강생 마이페이지 - 질문내역 페이지로 이동 */
	@RequestMapping("/stuquestion.do")
	public String moveToStumypageQna() {
		return "mypage/stuqnalist";
	}
	
	/* 수강생 마이페이지 - 과제제출내역 페이지로 이동 */
	@RequestMapping("/stusubmit.do")
	public String moveToStumypageAssignmentSubmit() {
		return "mypage/stusubmitlist";
	}
	
	/* 수강생 마이페이지 - 통계 페이지로 이동 */
	@RequestMapping("/stuanalist.do")
	public String moveToStumypageAnalist() {
		return "mypage/stuanalist";
	}

	/* 수강생 마이페이지 - 선생님 회원 신청 페이지로 이동 */
	@RequestMapping("/stuchangeTu.do")
	public String moveToStumypagechange() {
		return "mypage/stuapplytoTu";
	}
	
	/* 수강생 마이페이지 - 회원정보수정 페이지로 이동 */
	@RequestMapping("/stuupdate.do")
	public String moveToStumypagemodify() {
		return "mypage/membermodify";
	}
	
	/* 수강생 마이페이지 - 쪽지함 페이지로 이동 */
	@RequestMapping("/stumessage.do")
	public String moveToStumypageMessage() {
		return "mypage/mymessage";
	}
	
	/* 수강생 마이페이지 - 게시판 내가 쓴글 페이지로 이동 */
	@RequestMapping("/stumyboard.do")
	public String moveToStumypagemyboard() {
		return "mypage/mplist";
	}
	
	/* 강사 마이페이지로 이동 - 기본값 프로필보기 */
	@RequestMapping("/tumypage.do")
	public String moveToTeamypageprofile() {
		return "mypage/tuprofile";
	}
	
/*	@RequestMapping("/myqblist.do")
	public String qblistMethod(Model model) {
		model.addAttribute("myqblist", myqbService.selectQnaList());
		return "board/QnaBoardList";
	}*/
	
/*	@RequestMapping("/test.do")
	public String moveToStumyE() {
		return "mypage/mplist";
	}*/

}
