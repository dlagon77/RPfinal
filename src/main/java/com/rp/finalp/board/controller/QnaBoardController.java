package com.rp.finalp.board.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rp.finalp.board.model.service.QnaBoardService;
import com.rp.finalp.board.model.vo.QnaBoard;

@Controller
public class QnaBoardController {

	@Autowired
	private QnaBoardService qbService;
	
	@RequestMapping("/qblist.do")
	public String qblistMethod(Model model) {
		model.addAttribute("qblist", qbService.selectQnaList());
		return "board/QnaBoardList";
	}
	
	@RequestMapping("/qbDetail.do")	
	public String qbdetailMethod(Model model, int q_no){
		model.addAttribute("qbDetail", qbService.selectqBoardOne(q_no));
		return "board/QnaBoardDetail";
	}
	
	
	@RequestMapping("/qbInsert.do")
	public String qbinsert(HttpServletRequest request)throws Exception {
		/*QnaBoard qboard = new QnaBoard();
		qboard.set
		qboard.set
		*/
		return "";
	}
	
	public int qbdelete() {
		return 0;
	}
	
	public int qbupdate() {
		return 0;
	}
	
	public int qbreply() {
		return 0;
	}
}
