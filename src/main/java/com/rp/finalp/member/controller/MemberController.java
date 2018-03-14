package com.rp.finalp.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;

@Controller
public class MemberController {
	
	//private MemberService memberService = new MemberServiceImpl();
	@Autowired
	private MemberService memberService; 
	//IoC(제어반전) = DI(Dependancy Injection : 의존성 주입) + AOP
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String loginMethod(Member member, HttpSession session) {	
		if (session.getAttribute("loginUser") != null) {
			// 기존에 loginUser이란 세션 값이 존재한다면
			session.removeAttribute("loginUser"); // 기존값을 제거해 준다.
		}
		Member loginUser = memberService.loginCheck(member);				
		if(loginUser !=null) {
			session.setMaxInactiveInterval(10*60);
			session.setAttribute("loginUser", loginUser);
			System.out.println("로긴성공!"+loginUser);
			return "home";
		}else {
			return "member/loginFail";
		}
	}
	
	@RequestMapping("/logout.do")
	public String logoutMethod(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}
		return "home";
	}
	@RequestMapping(value="/stinsertpage.do")
	public String moveToInserpage() {
		return "member/stinsertForm";
	}
	
	/* 로그인 페이지로 이동 */
	@RequestMapping(value="/loginpage.do")
	public String moveToLoginpage() {
		System.out.println("로긴페이지");
		return "member/login";
	}
	
	@RequestMapping(value="/stinsert.do", method=RequestMethod.POST)
	public String insertMember(Member member, Model model) {
		System.out.println("insert : " + member);
		
		int result = memberService.insertMember(member);
		String viewName = null;
		if(result > 0)
			viewName = "home";
		else {			
			model.addAttribute("message", "회원가입실패");
			viewName = "minsertFail";
		}
		return viewName;
	}
	
	/*@RequestMapping(value="/proinsert.do", method=RequestMethod.POST)
	public String insertMember(Member member, Model model) {
		//System.out.println("insert : " + member);
		
		int result = memberService.insertMember(member);
		String viewName = null;
		if(result > 0)
			viewName = "home";
		else {			
			model.addAttribute("message", "회원가입실패");
			viewName = "minsertFail";
		}
		return viewName;
	}*/
	
	@RequestMapping("/stEnroll.do")
	public String enrollFormMethod() {
		return "member/stEnroll";
	}
	
	@RequestMapping("tutorList.do")
	public String selectTutorList() {
		
		
		
		return "tutor/tutorListView";
	}
	
	

}
