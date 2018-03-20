package com.rp.finalp.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.admin.model.dao.AdminDao;
import com.rp.finalp.admin.model.vo.Board;
import com.rp.finalp.admin.model.vo.Chart;
import com.rp.finalp.admin.model.vo.Contact;
import com.rp.finalp.admin.model.vo.Keyword;
import com.rp.finalp.admin.model.vo.Member;
import com.rp.finalp.admin.model.vo.Reply;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao aDao;
	
	@Override
	public List<Member> memberListAll() {
		return aDao.memberListAll();
	}

	@Override
	public List<Board> boardListAll(int size) {
		return aDao.boardListAll(size);
	}

	@Override
	public int boardDelete(Board board) {
		return aDao.boardDelete(board);
	}

	@Override
	public List<Board> boardSearch(Board board, String check, String send) {
		return aDao.boardSearch(board,check,send);
	}

	@Override
	public List<Contact> contactList() {
		return aDao.contactList();
	}

	@Override
	public int sendContact(Contact contact) {
		return aDao.sendContact(contact);
	}

	@Override
	public List<Board> modalBoard(Member member) {
		return aDao.modalBoard(member);
	}

	@Override
	public List<Reply> modalReply(Member member) {
		return aDao.modalReply(member);
	}

	@Override
	public int memberDelete(Member member) {
		return aDao.memberDelete(member);
	}

	@Override
	public int replyDelete(Reply reply) {
		return aDao.replyDelete(reply);
	}

	@Override
	public List<Member> tutorListAll() {
		return aDao.tutorListAll();
	}

	@Override
	public List<Keyword> keywordList() {
		return aDao.keywordList();
	}

	@Override
	public int insertKeyword(Keyword keyword) {
		return aDao.insertKeyword(keyword);
	}

	@Override
	public void keywordDelete(Keyword keyword) {
		aDao.keywordDelete(keyword);
	}

	@Override
	public void MemberBlackPlus(Member member) {
		aDao.MemberBlackPlus(member);
	}

	@Override
	public void MemberBlackMinus(Member member) {
		aDao.MemberBlackMinus(member);
	}

	@Override
	public List<Board> kBoardList() {
		return aDao.kBoardList();
	}

	@Override
	public List<Member> modalClass(Member member) {
		return aDao.modalClass(member);
	}

	@Override
	public List<Member> modalReview(Member member) {
		return aDao.modalReview(member);
	}

	@Override
	public List<Member> modalLecture(Member member) {
		return aDao.modalLecture(member);
	}

	@Override
	public List<Member> modalStudent(Member member) {
		return aDao.modalStudent(member);
	}

	@Override
	public List<Chart> stlist() {
		return aDao.stlist();
	}

	@Override
	public List<Chart> dalist() {
		return aDao.dalist();
	}
	
	
	
}
