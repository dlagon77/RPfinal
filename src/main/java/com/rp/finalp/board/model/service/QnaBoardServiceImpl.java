package com.rp.finalp.board.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.board.model.dao.QnaBoardDao;
import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;

@Service("qnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService{

	@Autowired
	private QnaBoardDao qbDao;
	
	@Override
	public List<QnaBoard> selectQnaList(){
		return qbDao.selectQnaList();
	}
	
	@Override
	public QnaBoard selectqBoardOne(int q_no){
		return qbDao.selectqBoardOne(q_no);
		
	}
	
	public int deleteQboard(QnaBoard qboard) {
		return qbDao.deleteQboard(qboard);
	    	
	}
	
	@Override
	public int insertQboard(QnaBoard qboard) {
		return qbDao.insertQboard(qboard);
		
	}
	
	public int qboardReadCount(QnaBoard q_read_cnt) {
		return qbDao.qboardReadCount(q_read_cnt);
	}
	
	public ArrayList<QnaBoard> selectPageList(int currentPage, int limit){
		return qbDao.selectPageList(currentPage, limit);

	}
	
	public int insertQboardReply(Q_Reply qreply) {
		return qbDao.insertQboardReply(qreply);
	}
	
	public int deleteQboardReply(Q_Reply qreply) {
		return qbDao.deleteQboardReply(qreply);
	}
	
	public int updateQboardReply(Q_Reply qreply) {
		return qbDao.updateQboardReply(qreply);
		}
}
