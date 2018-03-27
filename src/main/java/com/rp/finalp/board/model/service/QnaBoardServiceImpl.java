package com.rp.finalp.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.board.model.dao.QnaBoardDao;
import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;
import com.rp.finalp.board.model.vo.Tip;

@Service("qnaBoardService")
public class QnaBoardServiceImpl implements QnaBoardService{

	@Autowired
	private QnaBoardDao qbDao;
	
	//게시글리스트 보기
	@Override
	public List<QnaBoard> selectQnaList(HashMap<String, Object> map){
		return qbDao.selectQnaList(map);
	}
	//게시글상세보기
	@Override
	public QnaBoard selectqBoardOne(int q_no){
		return qbDao.selectqBoardOne(q_no);
	}
	//글 조회수 증가
	@Override
	public void addReadCount(int q_no) {
		qbDao.addReaCount(q_no);
	}
	//게시글 삭제
	@Override
	public int deleteQboard(int q_no) {
		return qbDao.deleteQboard(q_no);
	}
	//게시글 등록
	@Override
	public int insertQboard(QnaBoard qboard) {
		return qbDao.insertQb(qboard);
	}
	//페이징처리
	@Override
	public int listCount() {
		return qbDao.listCount();
	}
	//게시글 수정
	@Override
	public int updateQboard(QnaBoard qboard) {
		return qbDao.updateQb(qboard);
	}
	//게시글 검색
	@Override
	public List<QnaBoard> qbsearch(int qboption, String qbsearch) {
		return qbDao.qbsearch(qboption, qbsearch);
	}
	//게시글 답글 입력
	@Override
	public int insertQboardReply(Q_Reply qreply, int qno) {
		return qbDao.insertQboardReply(qreply, qno);
	}
	
	//게시글 답글삭제
	@Override
	public int deleteQboardReply(int q_re_no) {
		return qbDao.deleteQbReply(q_re_no);
	}
	
	//게시글 답글리스트
	@Override
	public List<Q_Reply> QboardRlist(int q_no) {
		
		return qbDao.QboardRlist(q_no);
	}
	
	
	
	
	
	
	@Override
	public List<QnaBoard> selectQnaListTip(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qbDao.selectQnaListTip(map);
	}
	@Override
	public Tip selectqBoardOneTip(int q_no) {
		// TODO Auto-generated method stub
		return qbDao.selectqBoardOneTip(q_no);
	}
	@Override
	public int insertQboardTip(QnaBoard qboard) {
		// TODO Auto-generated method stub
		return qbDao.insertQboardTip(qboard);
	}
	@Override
	public int deleteQboardTip(int q_no) {
		// TODO Auto-generated method stub
		return qbDao.deleteQboardTip(q_no);
	}
	@Override
	public void addReadCountTip(int q_no) {
		// TODO Auto-generated method stub
		qbDao.addReadCountTip(q_no);
	}
	@Override
	public int listCountTip() {
		// TODO Auto-generated method stub
		return qbDao.listCountTip();
	}
	@Override
	public int updateQboardTip(QnaBoard qboard) {
		// TODO Auto-generated method stub
		return qbDao.updateQboardTip(qboard);
	}
	@Override
	public List<QnaBoard> qbsearchTip(int qboption, String qbsearch) {
		// TODO Auto-generated method stub
		return qbDao.updateQboardTip(qboption,qbsearch);
	}
	@Override
	public int insertQboardReplyTip(Q_Reply qreply, int qno) {
		// TODO Auto-generated method stub
		return qbDao.insertQboardReplyTip(qreply,qno);
	}
	@Override
	public List<Tip> QboardRlistTip(int q_no) {
		// TODO Auto-generated method stub
		return qbDao.QboardRlistTip(q_no);
	}
	@Override
	public int deleteQboardReplyTip(int q_re_no) {
		// TODO Auto-generated method stub
		return qbDao.deleteQboardReplyTip(q_re_no);
	}
}
