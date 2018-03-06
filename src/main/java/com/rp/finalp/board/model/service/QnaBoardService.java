package com.rp.finalp.board.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.rp.finalp.board.model.vo.QnaBoard;

public interface QnaBoardService {

	List<QnaBoard> selectQnaList();

	QnaBoard selectqBoardOne(int q_no);
	
	int insertQboard(QnaBoard qboard);
	
}
