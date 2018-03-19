package com.rp.finalp.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.member.model.service.MemberService;
import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.dao.MemberDao;
import com.rp.finalp.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	//private MemberDao memberDao = new MemberDao();
	
		@Autowired
		private MemberDao memberDao;
		
		@Override
		public Member loginCheck(Member member) {
			return memberDao.loginCheck(member);
		}

		@Override
		public int insertMember(Member member) {
			return memberDao.insertMember(member);
		}

		@Override
		public int updateMember(Member member) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int deleteMember(String userId) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public ArrayList<Member> memberAll() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public int updateMemberImg(Member member) {
			return memberDao.updateMemberImg(member);
		}

		@Override 
		public List<Member> selectTutorList(){
			return memberDao.selectTutorList();
		}
		
		@Override
		public int selectTutorCount() {
			return memberDao.selectTutorCount();
		}

		@Override
		public List<Member> selectReview(int tutor_no) {
			
			return memberDao.selectReview(tutor_no);
		}

		@Override
		public int selectReviewCount(int tutor_no) {
			
			return memberDao.selectReviewCount(tutor_no);
		}
		@Override
		public int checkId(Member member) {
			
			return memberDao.checkId(member);
		}
		
		
		@Override
		public int insertApply(Lecture lecture) {
			return memberDao.insertApply(lecture);
		}
		
		@Override
		public int checkApply(Lecture lecture) {
			return memberDao.checkApply(lecture);
		}

		@Override
		public int deApply(Lecture lecture) {
			return memberDao.deApply(lecture);
		}

		@Override
		public int insertReview(Member member) {
			return memberDao.insertReview(member);
		}

		@Override
		public int checkReady(Lecture lecture) {
			return memberDao.checkReady(lecture);
		}
	}
