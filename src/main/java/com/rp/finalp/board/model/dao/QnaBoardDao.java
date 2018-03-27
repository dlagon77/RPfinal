package com.rp.finalp.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;
import com.rp.finalp.board.model.vo.Tip;

@Repository("qnaBoardDao")
public class QnaBoardDao {
	@Inject
    SqlSession sqlSession;
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QnaBoard> selectQnaList(HashMap<String, Object> map){
		return mybatis.selectList("boardMapper.selectAll", map);
	}
	
	public QnaBoard selectqBoardOne(int q_no){
		return mybatis.selectOne("boardMapper.selectQbOne", q_no);
	}
	
	public int deleteQboard(int q_no) {
		return mybatis.delete("boardMapper.DeleteQb", q_no);
	}
	
	public int insertQb(QnaBoard qboard) {
		return mybatis.insert("boardMapper.InsertQb", qboard);
	}

	public void addReaCount(int q_no) {
		mybatis.update("boardMapper.RcUpdateQb", q_no);	
	}
	
	public int listCount() {
		return mybatis.selectOne("boardMapper.listCount");
	}
	
	public int updateQb(QnaBoard qboard) {
		return mybatis.update("boardMapper.UpdateQb", qboard);
	}
	
	public int insertQboardReply(Q_Reply qreply, int qno) {
		qreply.setQ_no(qno);
		return mybatis.insert("boardMapper.rinsert", qreply);
	}
	
	public int deleteQbReply(int q_re_no) {
		return mybatis.delete("boardMapper.qbrdelete", q_re_no);
	}

	public int updateQboardReply(Q_Reply qreply) {
		return mybatis.update("boardMapper.rupdate", qreply);
	}

	public List<QnaBoard> qbsearch(int qboption, String qbsearch) {
		
		if(qboption == 0) {
		   return mybatis.selectList("boardMapper.qbstitle", qbsearch);
		}else if(qboption == 1){
		   return mybatis.selectList("boardMapper.qbscontent", qbsearch);
		}else if(qboption == 2){
		   return mybatis.selectList("boardMapper.qbstc", qbsearch);
		}else {
		   return mybatis.selectList("boardMapper.qbswriter", qbsearch);
		}
	}

	public List<Q_Reply> QboardRlist(int q_no) {		
		return mybatis.selectList("boardMapper.qbrlist",q_no);
	}

	
	
	
	
	public List<QnaBoard> selectQnaListTip(HashMap<String, Object> map){
		return mybatis.selectList("boardMapper.selectAllTip", map);
	}
	
	public Tip selectqBoardOneTip(int q_no){
		return mybatis.selectOne("boardMapper.selectQbOneTip", q_no);
	}
	
	public int deleteQboardTip(int q_no) {
		return mybatis.delete("boardMapper.DeleteQbTip", q_no);
	}
	
	public int insertQboardTip(QnaBoard qboard) {
		return mybatis.insert("boardMapper.InsertQbTip", qboard);
	}

	public void addReadCountTip(int q_no) {
		mybatis.update("boardMapper.RcUpdateQbTip", q_no);	
	}
	
	public int listCountTip() {
		return mybatis.selectOne("boardMapper.listCountTip");
	}
	
	public int updateQboardTip(QnaBoard qboard) {
		return mybatis.update("boardMapper.UpdateQbTip", qboard);
	}
	
	public int insertQboardReplyTip(Q_Reply qreply, int qno) {
		qreply.setQ_no(qno);
		System.out.println(qreply.toString());
		return mybatis.insert("boardMapper.rinsertTip", qreply);
	}
	
	public int deleteQboardReplyTip(int q_re_no) {
		return mybatis.delete("boardMapper.qbrdeleteTip", q_re_no);
	}

	public int updateQboardReplyTip(Q_Reply qreply) {
		return mybatis.update("boardMapper.rupdateTip", qreply);
	}

	public List<QnaBoard> updateQboardTip(int qboption, String qbsearch) {
		
		if(qboption == 0) {
		   return mybatis.selectList("boardMapper.qbstitleTip", qbsearch);
		}else if(qboption == 1){
		   return mybatis.selectList("boardMapper.qbscontentTip", qbsearch);
		}else if(qboption == 2){
		   return mybatis.selectList("boardMapper.qbstcTip", qbsearch);
		}else {
		   return mybatis.selectList("boardMapper.qbswriterTip", qbsearch);
		}
	}

	public List<Tip> QboardRlistTip(int q_no) {		
		return mybatis.selectList("boardMapper.qbrlistTip",q_no);
	}

	
	
}
