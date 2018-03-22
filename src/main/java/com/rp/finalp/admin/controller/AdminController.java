package com.rp.finalp.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rp.finalp.admin.model.service.AdminService;
import com.rp.finalp.admin.model.vo.Board;
import com.rp.finalp.admin.model.vo.Chart;
import com.rp.finalp.admin.model.vo.Contact;
import com.rp.finalp.admin.model.vo.Keyword;
import com.rp.finalp.admin.model.vo.Member;
import com.rp.finalp.admin.model.vo.Reply;

@Controller
public class AdminController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping("/mlist.do")
	public String memberListMethod(Model model) {
		
		model.addAttribute("mlist", aService.memberListAll());
		
		return "admin/adminMemberList";
	}
	
	@RequestMapping("/tlist.do")
	public String tutorListMethod(Model model) {
		
		model.addAttribute("tlist", aService.tutorListAll());
		
		return "admin/adminTutorList";
	}
	@RequestMapping("/blist.do")
	public String boardListMethod1() {
		return "admin/adminBoardList";
	}
	@RequestMapping(value="/ablist.do",method=RequestMethod.POST)
	public void boardListMethod(Model model,@RequestParam("size") int size,HttpServletResponse response) throws IOException {
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Board> list = aService.boardListAll(size);
		for(Board b : list) {
			JSONObject j = new JSONObject();
			j.put("bno", b.getBno());
			j.put("btitle",b.getBtitle());
			j.put("bcontent",b.getBcontent());
			j.put("breadcnt", b.getBreadcnt());
	//		j.put("bdate", b.getBdate());
			j.put("bwriter", b.getBwriter());
			j.put("bcateid", b.getBcateid());
		
			jarr.add(j);
		}
		
		json.put("blist", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("/bdelete.do")
	public String boardDeleteMethod(Board board,@RequestParam("check") int check) {
		int a = aService.boardDelete(board);
		if(check == 1) {
			return "redirect:kblist.do";
		}else {
			return "redirect:blist.do";
		}
	}
	
	@RequestMapping("/bSearch.do")
	public void boardSearchMethod(Model model,Board board,@RequestParam("check") String check
			,@RequestParam("send") String send,HttpServletResponse response) throws IOException {
		System.out.println(board.toString()+check+send);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		List<Board> list = aService.boardSearch(board,check,send);
		System.out.println("list"+list.toString());
		for(Board b : list) {
			JSONObject j = new JSONObject();
			j.put("bno", b.getBno());
			j.put("btitle",b.getBtitle());
			j.put("bcontent",b.getBcontent());
//			j.put("breadcnt", b.getBreadcnt());
	//		j.put("bdate", b.getBdate());
			j.put("bwriter", b.getBwriter());
			j.put("bcateid", b.getBcateid());
		
			jarr.add(j);
		}
		
		json.put("blist", jarr);
		System.out.println("json"+json.toJSONString());
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/clist.do")
	public String contactListMethod(Model model) {
		model.addAttribute("clist",aService.contactList());
		return "admin/adminContactList";
	}
	
	@RequestMapping(value="/sendContact.do", method=RequestMethod.POST)
	public void sendContactMethod(Contact contact,HttpServletResponse response) throws IOException{
		System.out.println(contact.toString());
		PrintWriter out = response.getWriter();
		if(aService.sendContact(contact) > 0) {
			out.append("ok");
		}else {
			out.append("fail");	
		}
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/modalBoard.do", method=RequestMethod.POST)
	public void modalBoardMethod(Model model, Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Board> list = aService.modalBoard(member);
		
		for(Board b : list) {
			JSONObject j = new JSONObject();
		//	j.put("bno", b.getBno());
			j.put("btitle",b.getBtitle());
			j.put("bcontent",b.getBcontent());
//			j.put("breadcnt", b.getBreadcnt());
	//		j.put("bdate", b.getBdate());
//			j.put("bwriter", b.getBwriter());
	//		j.put("bcateid", b.getBcateid());
		
			jarr.add(j);
		}
		
		json.put("m", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
		
	}
	
	@RequestMapping(value="/modalReply.do", method=RequestMethod.POST)
	public void modalReplyMethod(Model model, Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Reply> list = aService.modalReply(member);
		
		for(Reply r : list) {
			JSONObject j = new JSONObject();
			j.put("re_no",r.getRe_no());
			j.put("b_no", r.getB_no());
			j.put("re_con",r.getRe_con());
			j.put("re_writer",r.getRe_writer());
			j.put("re_cateid", r.getRe_cateid());
			j.put("btitle", r.getBtitle());
		
			jarr.add(j);
		}
		
		json.put("r", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/modalClass.do", method=RequestMethod.POST)
	public void modalClassMethod(Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Member> list = aService.modalClass(member);
		
		for(Member m : list) {
			JSONObject j = new JSONObject();
			j.put("mem_name",m.getMem_name());
		
			jarr.add(j);
		}
		
		json.put("c", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/modalReview.do", method=RequestMethod.POST)
	public void modalReviewMethod(Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Member> list = aService.modalReview(member);
		
		for(Member m : list) {
			JSONObject j = new JSONObject();
			j.put("rev_con",m.getRev_con());
			jarr.add(j);
		}
		
		json.put("r", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/modalLecture.do", method=RequestMethod.POST)
	public void modalLectureMethod(Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Member> list = aService.modalLecture(member);

		for(Member m : list) {
			JSONObject j = new JSONObject();
			j.put("lec_title",m.getLec_title());
			j.put("lec_con",m.getLec_con());
			jarr.add(j);
		}
		
		json.put("l", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping(value="/modalStudent.do", method=RequestMethod.POST)
	public void modalStudentMethod(Member member,HttpServletResponse response) throws IOException{
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		List<Member> list = aService.modalStudent(member);
		
		for(Member m : list) {
			JSONObject j = new JSONObject();
			j.put("mem_name",m.getMem_name());
		
			jarr.add(j);
		}
		
		json.put("s", jarr);
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json.toJSONString());
		out.flush();
		out.close();
	}
	
	@RequestMapping("/mdelete.do")
	public String memberDeleteMethod(Member member) {
		System.out.println(member.getMem_no());
		int a = aService.memberDelete(member);
		System.out.println(a);
		return "redirect:mlist.do";
	}
	
	@RequestMapping("/tdelete.do")
	public String tutorDeleteMethod(Member member) {
		System.out.println(member.getMem_no());
		int a = aService.memberDelete(member);
		System.out.println(a);
		return "redirect:tlist.do";
	}
	
	@RequestMapping("/rdelete.do")
	public String replyDeleteMethod(Reply reply) {
		System.out.println(reply.getRe_no()+","+reply.getRe_cateid());
		int a = aService.replyDelete(reply);
		return "redirect:mlist.do";
	}
	
	@RequestMapping("/klist.do")
	public String keywordListMethod(Model model) {
		model.addAttribute("klist", aService.keywordList());
		return "admin/adminKeyword";
	}
	
	@RequestMapping("/kinsert.do")
	public String keywordInsertMethod(Model model,Keyword keyword) {
		int a = aService.insertKeyword(keyword);
		return "redirect:klist.do";
	}
	
	@RequestMapping("/kdelete.do")
	public String keywordDeleteMethod(Keyword keyword) {
		aService.keywordDelete(keyword);
		return "redirect:klist.do";
	}
	
	@RequestMapping("/mblack.do")
	public String MemberBlackPlus(Member member) {
		aService.MemberBlackPlus(member);
		if(member.getMem_cate().equals("S")) {
		return "redirect:mlist.do";
		}else {
			return "redirect:tlist.do";
		}
	}
	
	@RequestMapping("/mblack2.do")
	public String MemberBlackMinus(Member member) {
		aService.MemberBlackMinus(member);
		if(member.getMem_cate().equals("S")) {
		return "redirect:mlist.do";
		}else {
			return "redirect:tlist.do";
		}
	}
	
	@RequestMapping("/kblist.do")
	public String kBoardList(Model model) {
		model.addAttribute("kblist", aService.kBoardList());
		return "admin/adminKeyBoard";
	}
	
	@RequestMapping("/chart.do")
	public String chart(Model model) {
		System.out.println(aService.dalist().toString());
		model.addAttribute("datelist",aService.dalist());
		model.addAttribute("stlist", aService.stlist());
		return "admin/adminChart";
	}
}	
