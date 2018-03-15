package com.rp.finalp.member.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.rp.finalp.lecture.model.service.LectureService;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;

@Controller
public class MemberController {
	
	//private MemberService memberService = new MemberServiceImpl();
	@Autowired
	private MemberService memberService; 
	//IoC(제어반전) = DI(Dependancy Injection : 의존성 주입) + AOP
	
	@Autowired
	private LectureService lectureService;
	
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
	/*@RequestMapping(value="/stinsertpage.do")
	public String moveToInserpage() {
		return "member/stinsertForm";
	}*/
	
	/* 로그인 페이지로 이동 */
	@RequestMapping(value="/loginpage.do")
	public String moveToLoginpage() {
		System.out.println("로긴페이지");
		return "member/login";
	}
	
	@RequestMapping(value="/proinsert.do", method=RequestMethod.POST)
	public String insertProMember(Member member, Model model, HttpServletRequest request) throws IOException{
		
		System.out.println("insert : " + member);
		//파일 업로드 처리
				MultipartHttpServletRequest multipartRequest =
						(MultipartHttpServletRequest)request;
				MultipartFile uploadFile = multipartRequest.getFile("uploadFile");
				
				// 웹서버 컨테이너 경로 추출함 
/*			    String root = request.getSession().getServletContext().getRealPath("/");*/
				 String root = "C:/JHfinalProject/finalp/target/m2e-wtp/web-resources/";
			    // 파일 저장 경로 정함
			    String savePath = root + "uploadFiles/";
			    //스프링에서는 프로젝트\target\m2e-wtp\web-resources\ 아래에 폴더를 만들어야 함
			 
				
				if(!uploadFile.isEmpty()){
					String ofileName = uploadFile.getOriginalFilename();
					
					long currentTime = System.currentTimeMillis();  
				    SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");
					String rfileName = simDf.format(new Date(currentTime)) +"."
							+ ofileName.substring(ofileName.lastIndexOf(".")+1);;
					uploadFile.transferTo(new File(savePath + rfileName));
								
					member.setMem_orfile(ofileName);
					member.setMem_refile(rfileName);
		}	
				
		int result = memberService.insertMember(member);
		String viewName = null;
		if(result > 0)
			viewName = "home";
		else {			
			model.addAttribute("message", "강사회원가입실패");
			viewName = "minsertFail";
		}
		return viewName;
	}
	
	@RequestMapping(value="/proinsertpage.do")
	public String moveToInsertpage() {
		System.out.println("회원가입페이지");
		return "member/proinsertForm";     //jsp파일 이름
	}
	
	//아이디 중복
	@RequestMapping(value = "/proinsert.do", method = RequestMethod.POST)
		public @ResponseBody int idCheck(Member member, Model model) {
			return memberService.checkId(member);
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
	
	@RequestMapping("/tutorListView.do")
	public String selectTutorList(Member member, Model model) {
		
		model.addAttribute("tList",memberService.selectTutorList());
		model.addAttribute("tCount",memberService.selectTutorCount());
		return "tutor/tutorListView";
	}
	
	@RequestMapping("/tutorHome.do")
	public String tutorHomeMethod(@RequestParam(value="tutor_no") int tutor_no,Model model) {
		
		model.addAttribute("tutor_no",tutor_no);
		model.addAttribute("reviewCount",memberService.selectReviewCount(tutor_no));
		model.addAttribute("Lecture",lectureService.selectTutorLecture(tutor_no));
		model.addAttribute("review",memberService.selectReview(tutor_no));
		
		return "tutor/tutorHome";
	}
	//회원가입 이메일 중복 체크
	/*@ResponseBody
    @RequestMapping(value = "/checkSignup", method = RequestMethod.POST)
    public String checkSignup(HttpServletRequest request, Model model) {
        String id = request.getParameter("id");
        int rowcount = memberService.checkSignup(id);
        
        return String.valueOf(rowcount);
    }*/
}
