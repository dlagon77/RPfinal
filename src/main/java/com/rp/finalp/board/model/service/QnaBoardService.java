package com.rp.finalp.board.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;

public interface QnaBoardService {

	List<QnaBoard> selectQnaList(HashMap<String, Object> map);

	QnaBoard selectqBoardOne(int q_no);
	
	int insertQboard(QnaBoard qboard);

	int deleteQboard(int q_no);

	void addReadCount(int q_no);

	int listCount();

	int updateQboard(QnaBoard qboard);

	List<QnaBoard> qbsearch(int qboption, String qbsearch);
	
	int insertQboardReply(Q_Reply qreply, int qno);

	List<Q_Reply> QboardRlist(int q_no);

	int deleteQboardReply(int q_re_no);
    

	
}
