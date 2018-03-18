package com.rp.finalp.member.model.service;

import java.util.ArrayList;
import java.util.List;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;


public interface MemberService {
	Member loginCheck(Member member);
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String userId);
	ArrayList<Member> memberAll();
	int updateMemberImg(Member member);
	List<Member> selectTutorList();
	int selectTutorCount();
	int selectReviewCount(int tutor_no);
	List<Member> selectReview(int tutor_no);
	
	//아이디중복확인
	int checkId(Member member); 
	
	
	int insertApply(Lecture lecture);
	int checkApply(Lecture lecture);
	int deApply(Lecture lecture);
	int insertReview(Member member);
	
	
}
