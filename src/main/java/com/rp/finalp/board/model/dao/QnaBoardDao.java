package com.rp.finalp.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.board.model.vo.Q_Reply;
import com.rp.finalp.board.model.vo.QnaBoard;

@Repository("qnaBoardDao")
public class QnaBoardDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QnaBoard> selectQnaList(){
		return mybatis.selectList("boardMapper.selectAll");
	}
	
	public QnaBoard selectqBoardOne(int q_no){
		return mybatis.selectOne("boardMapper.selectQbOne", q_no);
		
	}
	
	public int deleteQboard(QnaBoard qboard) {
		return mybatis.delete("boardMapper.delete", qboard);
	    	
	}
	
	public int insertQboard(QnaBoard qboard) {
		return mybatis.insert("boardMapper.insert", qboard);
		
	}
	
	public int qboardReadCount(QnaBoard q_read_cnt) {
		return 0;
		//return mybatis.qbReadCount("boardMapper.qbReadCount", q_read_cnt);
	}
	
	public ArrayList<QnaBoard> selectPageList(int currentPage, int limit){
		return null;
	}
	
	public int insertQboardReply(Q_Reply qreply) {
		return mybatis.insert("boardMapper.rinsert", qreply);
	}
	
	public int deleteQboardReply(Q_Reply qreply) {
		return mybatis.delete("boardMapper.rdelete", qreply);
	}
	
	public int updateQboardReply(Q_Reply qreply) {
		return mybatis.update("boardMapper.rupdate", qreply);
		}


	
	
}
