package com.rp.finalp.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.board.model.service.QnaBoardService;
import com.rp.finalp.board.model.vo.QnaBoard;
import com.rp.finalp.common.util.FileUtils;
import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.member.model.vo.Member;
import com.rp.finalp.mypage.model.service.MypageService;
import com.rp.finalp.mypage.model.vo.Message;
import com.rp.finalp.mypage.model.vo.SelectQnaboard;
import com.sun.org.glassfish.gmbal.ParameterNames;

@Controller
public class MypageController {
	
	
	@Autowired
	private MypageService mypService;
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private QnaBoardService qbService;
	
	
	/* 과제 제출 내역 */
/*	@RequestMapping("/stusubmit.do")
	public String moveToStumypageAssignmentSubmit() {
		return "mypage/stusubmitlist";
	}*/
	
	
	
	
	
	// 마이페이지 - 상세보기 : 과제 제출 게시판 글 보기 
	@RequestMapping(value = "/myTestDetailView.do", method = RequestMethod.GET)
	public String myTestboardDetail(Model model, @RequestParam("sno") int sno) {
		model.addAttribute("mypassign", mypService.selectmyTestdetail(sno));
		return "mypage/myTestDetailView";
	}
	
	// 마이페이지 : 시험 응시 내역 내가 쓴글 리스트 조회 + 검색
	@RequestMapping(value = "/myTestBoard.do")
	public String myTestBoardlist(Model model, @RequestParam(value="page",required=true,defaultValue="1")int page,
			@RequestParam(value="keyword",required=false,defaultValue="") String keyword,
			@RequestParam(value="mem_no",required=false,defaultValue="1") int mem_no,
			HttpSession session
			) {
		if(session !=null) {	
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		
		int currentPage = page;
		int limit = 10;
		int listCount = mypService.getListCountTest(keyword,mem_no);
		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = ((int) ((double) currentPage / limit + 0.9) -1) * limit + 1;
		int endPage = startPage + limit - 1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		List<Assignment> list = mypService.serviceMyTest(startRow,endRow,keyword,mem_no);
		System.out.println(list);
		if (maxPage < endPage)
			endPage = maxPage;
		
		if(list.size()>0){
			model.addAttribute("list", list);
		}else{
			model.addAttribute("result", 0);
		}
		System.out.println("listCount :"+listCount);                  
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("limit", limit);
		model.addAttribute("keyword", keyword);
		
		return "mypage/myTestBoard";
	}
	
	
	
	
	
	
	
	
	// 마이페이지 - 상세보기 : 과제 제출 게시판 글 보기 
	@RequestMapping(value = "/detailMypAssignService.do", method = RequestMethod.GET)
	public String mypageAssignDetail(Model model, @RequestParam("sno") int sno) {
		model.addAttribute("mypassign", mypService.selectmyassigndetail(sno));
		return "mypage/mySubmitAssignDetailView";
	}
	
	// 마이페이지 : 과제 제출 내역 내가 쓴글 리스트 조회 + 검색
	@RequestMapping(value = "/MyAssignBoardList.do")
	public String mypageAssignmentSubmitlist(Model model, @RequestParam(value="page",required=true,defaultValue="1")int page,
			@RequestParam(value="keyword",required=false,defaultValue="") String keyword,
			@RequestParam(value="mem_no",required=false,defaultValue="1") int mem_no,
			HttpSession session
			) {
		if(session !=null) {	
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		
		int currentPage = page;
		int limit = 10;
		int listCount = mypService.getListCountSubAssign(keyword,mem_no);
		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = ((int) ((double) currentPage / limit + 0.9) -1) * limit + 1;
		int endPage = startPage + limit - 1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		List<Assignment> list = mypService.serviceMyAssign(startRow,endRow,keyword,mem_no);
		System.out.println(list);
		if (maxPage < endPage)
			endPage = maxPage;
		
		if(list.size()>0){
			model.addAttribute("list", list);
		}else{
			model.addAttribute("result", 0);
		}
		System.out.println("listCount :"+listCount);                  
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("limit", limit);
		model.addAttribute("keyword", keyword);
		
		return "mypage/mySubmitAssignBoard";
	}
	
	
	
	/* 마이페이지 - 일대일문의페이지 */
/*	@RequestMapping("/mypagequestionPage.do")
	public String moveTomypagequestion() {
		return "mypage/customerboardlist";
	}*/
	
	/* 마이페이지 일대일문의ㅋ	 ->   */
	@RequestMapping("/adminquestion.do")
	public String file(Model model, HttpSession session,
			@RequestParam(value="mem_no",required=false)int mem_no,
			@RequestParam(value="inqbtitle",required=false)String inqbtitle,
			@RequestParam(value="content",required=false)String content,
			@RequestParam(value="mpside",required=false)int mpside
			) {
		if(mpside == 2) {
			int checknum = mypService.adminquestion(mem_no, inqbtitle, content);
			if(checknum > 0) {
				System.out.println("마이페이지 - 일대일문의하기 성공!");
			}else {
				System.out.println("마이페이지 - 일대일문의하기 실패!");
			}
		}
		model.addAttribute("myadminquestion", mypService.myadminquestlist(mem_no));
		return "mypage/customerboardlist";
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
	
	/* 헤더 ->  프로필페이지로 이동 - 기본값 프로필보기 */
	@RequestMapping("/profpage.do")
	public String moveToStuprofile(Model model, HttpSession session) {
		int mem_no=0;
		if(session !=null) {
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
			Member info = mypService.checkMeminfo(mem_no);

			model.addAttribute("Member", info);
			return "mypage/profilemodify";
		}
		else {
			return "home";
		}
	}

	
	/* 현재비번확인 하고 밑에서 비번 바꿈 */
	@RequestMapping(value="/changepwd.do")
	public void changePwd(Model model,@RequestParam(value="oldpass",required=false)String oldpass,
			@RequestParam(value="newpass1",required=false)String newpass1,
			@RequestParam(value="newpass2",required=false)String newpass2,
			HttpServletResponse response, HttpSession session)throws Exception {
		
		int mem_no=0;
		
		if(session !=null) {
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Member member = mypService.checkOldPwd(mem_no);
//		if(newpass1.equals(newpass2))
		if(!member.getMem_pwd().equals(oldpass)) {
			if(newpass1.equals(newpass2)) {
				out.append("fail1");
				out.flush();
			}else {
				out.append("fail1");
				out.flush();
				System.out.println("다틀림");
			}
		}else {
			if(newpass1.equals(newpass2)) {
				int changepwd = mypService.changepwd(mem_no,newpass2);
				if(changepwd > 0) {
					out.append("ok");
					out.flush();	
				}else {
					out.append("serverfail");
					out.flush();	
				}
			}else {
				out.append("fail2");
				out.flush();
			}
		}
		out.close();
	}
	
	
	/* 경력사항 변경 */
	@RequestMapping(value="/changecareer.do")
	public void changecareer(Model model,@RequestParam(value="username1",required=false)String username1,
			@RequestParam(value="username2",required=false)String username2,
			@RequestParam(value="username3",required=false)String username3,
			HttpServletResponse response, HttpSession session)throws Exception {
		String sumstr = username1+","+username2+","+username3;
		int mem_no=0;
		Member member = null;
		if(session !=null) {
			member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		int checknum = mypService.changeMemCareer(mem_no, sumstr);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
//		
		if(checknum > 0) {
			System.out.println("MypageControl - changecareer.do 강사경력사항 바꾸기 성공"+member);
			out.append("ok");
			out.flush();
		}else {
			out.append("fail");
			out.flush();
		}
		
		out.close();
	}
	
	/* 관심분야 변경 */
	@RequestMapping(value="/changeMemInter.do")
	public void changeMemInter(Model model,@RequestParam(value="meminter",required=false)String mem_inter,
			HttpServletResponse response, HttpSession session)throws Exception {
		System.out.println("changeMemInter진입성공");
		int mem_no=0;
		
		if(session !=null) {	
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		int checknum = mypService.changeMemInter(mem_no, mem_inter);
		System.out.println(checknum);
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(checknum > 0) {
			out.append("ok");
			out.flush();
		}else {
			out.append("fail");
			out.flush();
		}
		out.close();
	}
	
	/* 수강생 마이페이지 - 구독중인 강사 페이지로 이동 */
	/*@RequestMapping("/stusubsc.do")*/
	@RequestMapping("/stumypage.do")
	public String moveToStumypagesubscribe(Model model, int mem_no) {
		model.addAttribute("mysubsc", mypService.mysubsclist(mem_no));
		return "mypage/stusubscribe";
	}
	
	// 마이페이지 : QNA내가 쓴글 리스트 조회 + 검색
	@RequestMapping(value = "/selectQnaBoardList.do")
	public String serviceMyWrite(Model model, @RequestParam(value="page",required=true,defaultValue="1")int page,
			@RequestParam(value="keyword",required=false,defaultValue="") String keyword,
			@RequestParam(value="mem_no",required=false,defaultValue="1") int mem_no,
			HttpSession session
			) {
		if(session !=null) {	
			Member member = (Member)session.getAttribute("loginUser");
			mem_no = member.getMem_no();
		}
		
		int currentPage = page;
		int limit = 10;
		int listCount = mypService.getListCount(keyword,mem_no);
		int maxPage = (int) ((double) listCount / limit + 0.9);
		int startPage = ((int) ((double) currentPage / limit + 0.9) -1) * limit + 1;
		int endPage = startPage + limit - 1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		List<SelectQnaboard> list = mypService.serviceMyWrite(startRow,endRow,keyword,mem_no);
		if (maxPage < endPage)
			endPage = maxPage;
		
		if(list.size()>0){
			model.addAttribute("list", list);
		}else{
			model.addAttribute("result", 0);
		}
		                  
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("limit", limit);
		model.addAttribute("keyword", keyword);
		
		return "mypage/myWriteBoard";
	}
	
	// 마이페이지 - 상세보기  : 수정 180320
	@RequestMapping(value = "/serviceUpdate.do", method = RequestMethod.POST)
	public String mywriteModify(QnaBoard qboard) {
		int a = qbService.updateQboard(qboard);
		System.out.println(a);
		System.out.println("updateController : " );
		return "redirect:/selectQnaBoardList.do";
	}
	
	// 마이페이지 - 상세보기 : 수정페이지 이동
	@RequestMapping(value = "/MyWriteQNAModifyPage.do")
	public String mywriteModifyView(Model model, @RequestParam("no") int no) {
		model.addAttribute("myqnaboardupdate", mypService.selectmyQnaList(no));
		return "mypage/mywriteqnaModifyView";
	}
	
	// 마이페이지 - 상세보기 : 내가 쓴 QNA게시판 글 보기 
	@RequestMapping(value = "/detailMyQnaService.do", method = RequestMethod.GET)
	public String mywritedetail(Model model, @RequestParam("sno") int sno) {
		model.addAttribute("myqnaboard", mypService.selectmyQnaList(sno));
		System.out.println("Controller : mywriteqnalist");
		return "mypage/mywriteqnaDetailView";
	}
	
	// 마이페이지 - 상세보기에서: 내가 쓴 QNA게시판 글 보기 : 삭제
	@RequestMapping(value = "/delmyQna.do")
	public String deleteService(Model model,@RequestParam("sno") int sno) {
		System.out.println("마이페이지 진입성공?");
		int checknum = mypService.deleteMyQnaService(sno);
		if(checknum > 0) {
			System.out.println("삭제 성공");
			return "redirect:/selectQnaBoardList.do";
		}else {
			System.out.println("삭제 실패");
			return "redirect:/selectQnaBoardList.do";
		}
		
	}
	

	
	/* 수강생 마이페이지 - 질문내역 페이지로 이동 */
/*	@RequestMapping("/stuquestion.do")
	public String moveToStumypageQna() {
		return "mypage/stuqnalist";
	}
	*/
	/* 수강생 마이페이지 - 과제제출내역 페이지로 이동 */
	@RequestMapping("/stusubmit.do")
	public String moveToStumypageAssignmentSubmit() {
		return "mypage/stusubmitlist";
	}
	

	/* 마이페이지 ajax 프로필 이미지 업로드 */
	@RequestMapping("/ajax/userimgupload.do")
	@ResponseBody
	public int userImgUpload(HttpSession session, HttpServletRequest request) throws Exception {
		Member member = (Member) session.getAttribute("loginUser");
		// 파일을 저장하고, "원래 파일명 | 변환된 파일명" 리턴
		request.setCharacterEncoding("UTF-8");
		String fileName = new FileUtils().InsertFile(session, request);
		String[] fName = fileName.split("/");
		member.setMem_orfile(fName[0]);
		member.setMem_refile(fName[1]);
		int result = memberservice.updateMemberImg(member);

		return result;
	}
	/* 마이페이지 ajax 프로필 기본 이미지로 변경 */
	@RequestMapping("/ajax/initimg.do")
	@ResponseBody
	public int initImg(HttpSession session, HttpServletRequest request) throws Exception {
		Member member = (Member) session.getAttribute("loginUser");
		member.setMem_orfile("");
		member.setMem_refile("");

		int result = memberservice.updateMemberImg(member);
		System.out.println(result);
		return result;
	}
	
	// 회원 탈퇴 기능
		@RequestMapping("/mDelete.do")
		public String memberDelete(Model model, HttpSession session) {
			int mem_no=0;
			Member member = null;
			if(session !=null) {
				member = (Member)session.getAttribute("loginUser");
				mem_no = member.getMem_no();
			}
			System.out.println("탈퇴: " + member);
			int checknum = mypService.memberDelete(mem_no);
			if(checknum > 0) {
				System.out.println("회원 탈퇴 완료");
				return "redirect:delpop.do";
			}
			else {
				System.out.println("회원 탈퇴 실패");
				return "redirect:home.do";
			}

		}
		
		/* 탈퇴시 팝업 후 메인페이지 */
		@RequestMapping(value="/delpop.do")
		public String moveTodelpopQna() {
			return "mypage/delpopup";
		}
		
		/* 탈퇴 비번 다시 확인 */
		@RequestMapping(value="/checkdelpwd.do")
		public void checkdelpwd(Model model,@RequestParam(value="mempass",required=false)String mempass,
				HttpServletResponse response, HttpSession session)throws Exception {
			int mem_no=0;
			if(session !=null) {
				Member member = (Member)session.getAttribute("loginUser");
				mem_no = member.getMem_no();
			}
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			Member member = mypService.checkOldPwd(mem_no);
			if(member.getMem_pwd().equals(mempass)) {
					out.append("ok");
					out.flush();
			}else {
					out.append("fail");
					out.flush();
			}
			out.close();
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

		/*@RequestMapping("/myqblist.do")
		public String qblistMethod(Model model) {
			model.addAttribute("myqblist", myqbService.selectQnaList());
			return "board/QnaBoardList";
		}*/
		/* 수강생 마이페이지 - 선생님 회원 신청 페이지로 이동 */
		/*	@RequestMapping("/stuchangeTu.do")
			public String moveToStumypagechange() {
				return "mypage/stuapplytoTu";
			}*/
			
			/* 수강생 마이페이지 - 회원정보수정 페이지로 이동 */
		/*	@RequestMapping("/stuupdate.do")
			public String moveToStumypagemodify() {
				return "mypage/membermodify";
			}*/
		/* 수강생 마이페이지 - 쪽지함 모달로 이동 */
		
		@RequestMapping(value="/msgList.do",method=RequestMethod.POST)
		public void MessageListMethod(Model model, @RequestParam("mem_no") int size, HttpServletResponse response) throws IOException {
			
				JSONObject json = new JSONObject();
				JSONArray jarr = new JSONArray();		
				
				List<Message> list = mypService.selectMessageList(size);
				for(Message m : list) {
					SimpleDateFormat mesdate = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
					
					String mdate = mesdate.format(m.getMes_date());
					
					JSONObject j = new JSONObject();
					j.put("mes_no", m.getMes_no());
					j.put("mes_title", m.getMes_title());
					j.put("mes_writer", m.getMes_writer());
					j.put("mes_content", m.getMes_content());
					j.put("mes_date", mdate);
					j.put("mes_receiver", m.getMes_receiver());
					
					jarr.add(j);
				}
				
				json.put("msglist", jarr);
				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println(json.toJSONString());
				out.flush();
				out.close();
		}
		
		/* 쪽지 작성 */
		@RequestMapping(value="/mesInsert.do", method=RequestMethod.POST)
		public String sendMsg(Model model, Message msg, @RequestParam("emlist") int mv) {
			
			mypService.insertMsg(msg, mv);
			return "redirect:qblist.do";
		}
		
		/* 이메일리스트 셀렉트박스에 불러오기 */
		@RequestMapping(value="/EmailList.do", method=RequestMethod.POST)
		public void eList(Model model, HttpServletResponse response) throws IOException {	
				JSONObject json = new JSONObject();
				JSONArray jarr = new JSONArray();
				
				List<Member> list = mypService.emailList();
				for(Member m : list) {
					
					JSONObject j = new JSONObject();
					j.put("mem_no", m.getMem_no());
					j.put("mem_id", m.getMem_id());
					j.put("mem_name", m.getMem_name());
					
					jarr.add(j);
					
					
				}
				
				json.put("maillist", jarr);
				
				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println(json.toJSONString());
				out.flush();
				out.close();
		}
		
		@RequestMapping(value="/myMsgDetail.do", method=RequestMethod.POST)
		public void msgDetailMethod(HttpServletResponse response, @RequestParam("mes_no") int mes_no) throws IOException {
			
			JSONObject json = new JSONObject();
			JSONArray jarr = new JSONArray();
			
			Message m = mypService.msgListOne(mes_no);
			
				
				JSONObject j = new JSONObject();
				j.put("mes_title", m.getMes_title());
				j.put("mes_content", m.getMes_content());
				j.put("mes_date", m.getMes_date().toString());
				
				jarr.add(j);
				
						
			json.put("mdetail", jarr);
			
		
			
			response.setContentType("application/json; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println(json.toJSONString());
			out.flush();
			out.close();
	}
}

