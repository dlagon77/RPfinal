package com.rp.finalp.admin.model.dao;


import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.admin.model.vo.Board;
import com.rp.finalp.admin.model.vo.Chart;
import com.rp.finalp.admin.model.vo.Contact;
import com.rp.finalp.admin.model.vo.Keyword;
import com.rp.finalp.admin.model.vo.Member;
import com.rp.finalp.admin.model.vo.Reply;

@Repository("adminDao")
public class AdminDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Member> memberListAll(){
		return  mybatis.selectList("adminMapper.selectMemberAll");
	}

	public List<Board> boardListAll(int size) {
		return mybatis.selectList("adminMapper.selectBoardAll",size);
	}

	public int boardDelete(Board board) {
		if(board.getBcateid() == 2) {
		return mybatis.delete("adminMapper.deleteQnaBoard", board);
		}else 
			return mybatis.delete("adminMapper.deleteTipBoard", board);
	}

	public List<Board> boardSearch(Board board, String check, String send) {
		if(check.equals("bwriter")) {
			board.setBwriter(send);
			return mybatis.selectList("adminMapper.searchWriterBoard",board);
		}else if(check.equals("btitle"))
			board.setBtitle(send);
		System.out.println("DAO : "+board.toString());
			return mybatis.selectList("adminMapper.searchTitleBoard",board);
	}

	public List<Contact> contactList() {
		return mybatis.selectList("adminMapper.selectContactAll");
	}

	public int sendContact(Contact contact) {
		return mybatis.update("adminMapper.sendContact", contact);
	}

	public List<Board> modalBoard(Member member) {
		return mybatis.selectList("adminMapper.modalBoard", member);
	}

	public List<Reply> modalReply(Member member) {
		
		List<Reply> qna = mybatis.selectList("adminMapper.modalReply", member);
		List<Reply> tip = mybatis.selectList("adminMapper.modalReply2", member);
		
		for(Reply r : qna) {
			tip.add(r);
		}
		
		return tip;
	}

	public int memberDelete(Member member) {
		return mybatis.delete("adminMapper.deleteMember", member);
	}

	public int replyDelete(Reply reply) {
		if(reply.getRe_cateid() == 2) {
			return mybatis.delete("adminMapper.deleteQnaReply",reply);
		}else {
			return mybatis.delete("adminMapper.deleteTipReply",reply);
		}
	}

	public List<Member> tutorListAll() {
		return mybatis.selectList("adminMapper.selectTutorAll");
	}

	public List<Keyword> keywordList() {
		return mybatis.selectList("adminMapper.selectKeyAll");
	}
	
	public int insertKeyword(Keyword keyword) {
		return mybatis.insert("adminMapper.insertKeyword",keyword);
	}

	public void keywordDelete(Keyword keyword) {
		mybatis.delete("adminMapper.keywordDelete", keyword);
	}

	public void MemberBlackPlus(Member member) {
		mybatis.update("adminMapper.blackplus",member);
	}

	public void MemberBlackMinus(Member member) {
		mybatis.update("adminMapper.blackminus",member);
	}

	public List<Board> kBoardList() {
		
		List<Keyword> keylist= mybatis.selectList("adminMapper.selectKeyAll");
		System.out.println(keylist.toString());
		List<Board> blist = new ArrayList<Board>();
		List<Board> list = new ArrayList<Board>();
		for(Keyword k : keylist) {
			blist = mybatis.selectList("adminMapper.kBoardAll",k);
			for(Board b : blist) {
			b.setKeyword(k.getKey_word());
			list.add(b);
			}
			
		}
		
		return list;
	}

	public List<Member> modalClass(Member member) {
		return mybatis.selectList("adminMapper.modalClass", member);
	}

	public List<Member> modalReview(Member member) {
		return mybatis.selectList("adminMapper.modalReview", member);
	}

	public List<Member> modalLecture(Member member) {
		return mybatis.selectList("adminMapper.modalLecture", member);
	}

	public List<Member> modalStudent(Member member) {
		return mybatis.selectList("adminMapper.modalStudent", member);
	}

	public List<Chart> stlist() {
		return mybatis.selectList("adminMapper.stlist");
	}

	public List<Chart> dalist() {
		List<Chart> list = mybatis.selectList("adminMapper.dalist");
		System.out.println(list.toString());
		return mybatis.selectList("adminMapper.dalist");
	}
	
}
