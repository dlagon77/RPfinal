package com.rp.finalp.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		Member loginUser = memberService.loginCheck(member);			
		session.setAttribute("loginUser", loginUser);
		return "home";
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
	
	
	

}
