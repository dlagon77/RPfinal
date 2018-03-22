package com.rp.finalp.board.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rp.finalp.board.model.service.QnaBoardService;
import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;

@Controller
public class QnaBoardController {

	@Autowired
	private QnaBoardService qbService;
	
	/*//게시글 리스트보기
	@RequestMapping("/qblist.do")
	public String qblistMethod(Model model, HashMap<String, Object> map) {
		model.addAttribute("qblist", qbService.selectQnaList(map));
		return "board/QnaBoardList";
	}*/
	//게시글 상세보기 
	@RequestMapping("/qbDetail.do")	
	public String qbdetailMethod(Model model, int q_no){
		model.addAttribute("qbDetail", qbService.selectqBoardOne(q_no));
		model.addAttribute("rlist", qbService.QboardRlist(q_no));
		System.out.println(qbService.QboardRlist(q_no).toString());
		//조회수 증가
		qbService.addReadCount(q_no);
		return "board/QnaBoardDetail";
	}
	//게시글 작성
	@RequestMapping(value="/qbInsert.do", method=RequestMethod.POST)
	public String qbinsert(QnaBoard qboard) {
		qbService.insertQboard(qboard);
		return "redirect:qblist.do";
	}
	//게시글 작성폼 이동 메소드
	@RequestMapping("/qbInsertform.do")
	public String qbinsertform() {
		return "board/QnaBoardInsert";
	}
	//게시글 삭제
	@RequestMapping("/qbDelete.do")
	public String qbdelete(int q_no) {
		qbService.deleteQboard(q_no);
		return "redirect:qblist.do";
	}
	//게시글 페이징처리후 리스트출력
	@RequestMapping("qblist.do")
	public String QbListPageMethod(Model model, HttpServletRequest request) {
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = qbService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		
		List<QnaBoard> list = qbService.selectQnaList(map);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("qblist",list);
		model.addAttribute("listCount", (int)listCount);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		
		return "board/QnaBoardList";
	}
	
	//게시글 수정
	@RequestMapping(value="qbUpdate.do", method=RequestMethod.POST)
	public String qbUpdateMethod(QnaBoard qboard) {
		System.out.println(qboard.toString());
		int a = qbService.updateQboard(qboard);
		System.out.println(a);
		return "redirect:qblist.do";
	}
	
	//게시글 수정폼 이동 메소드
	@RequestMapping("/qbUpdateform.do")
	public String qbupdateform(Model model,QnaBoard qboard) {
		model.addAttribute("qboard", qboard);
		return "board/QnaBoardUpdate";
	}
	
    //검색 기능
	@RequestMapping(value="qbsearch.do", method=RequestMethod.POST)
	public String qbSearchMethod(Model model, @RequestParam("qboption") int qboption, 
									@RequestParam("qbsearch") String qbsearch, HttpServletRequest request) {		
		
		int currentPage = 1;
		if(request.getParameter("currentPage")!=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int limit = 10;
		int listCount = qbService.listCount();
		int maxPage = (int)((double)listCount / limit + 0.9);
		int startPage = ((int)((double)currentPage / limit + 0.9)-1)*limit +1;
		int endPage = startPage + limit -1;
		int startRow = (currentPage - 1)*limit + 1;
		int endRow = startRow + limit -1;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", startRow);
		map.put("endRow",endRow);
		
		List<QnaBoard> list = qbService.selectQnaList(map);
		
		if(maxPage < endPage)
			endPage = maxPage;
		
		model.addAttribute("qblist", qbService.qbsearch(qboption, qbsearch));
		model.addAttribute("listCount", (int)listCount);
		model.addAttribute("limit",limit);
		model.addAttribute("currentPage",currentPage);
		model.addAttribute("maxPage",maxPage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		
		
		return "board/QnaBoardList";
	}
	
	//댓글 삭제
	@RequestMapping(value="qbrDelete.do")
	public String qbrdelete(@RequestParam("q_no") int qno, int q_re_no) {
		qbService.deleteQboardReply(q_re_no);
		return "redirect:qbDetail.do?q_no="+qno;
	}
	
	//댓글 입력
	@RequestMapping(value="qbReply.do", method=RequestMethod.POST)
	public void qbreply(Q_Reply qreply, HttpServletResponse response,@RequestParam("q_no") int qno) throws IOException {
			int check = qbService.insertQboardReply(qreply, qno);
			if(check > 0 ) {
				
				List<Q_Reply> list = qbService.QboardRlist(qno);
				System.out.println(list.toString());
				JSONObject json = new JSONObject();
				JSONArray jarr = new JSONArray();
			
				for(Q_Reply r : list) {
					JSONObject j = new JSONObject();			
		
					j.put("q_re_con", r.getQ_re_con());
					j.put("q_re_date", r.getQ_re_date().toString());
					j.put("q_re_writer", r.getQ_re_writer());
					j.put("q_no", r.getQ_no());
					j.put("q_re_no", r.getQ_re_no());
					jarr.add(j);
				}
				
				json.put("rlist",jarr);
				response.setContentType("application/json; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println(json.toJSONString());
				out.flush();
				out.close();		
			}
	}
}	
	


