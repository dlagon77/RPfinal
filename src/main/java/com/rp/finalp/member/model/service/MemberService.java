package com.rp.finalp.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;


public interface MemberService {
	Member loginCheck(Member member);
	//int insertMember(Member member);
	int insertProMember(Member member);
	int insertStMember(Member member);
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
	int checkReady(Lecture lecture);
	Member todaycheck();
	int updateCount(Member today);
	void insertCount(); 
	
	//강의실관리에서 내 수강생 조회용
	List<Member> selectStudentList(HashMap<String, Object> map);
	int countStudentList(int tutor_no);
	//강의실관리에서 수강신청학생 조회용
	List<Member> applyClassList(HashMap<String, Object> map);
	int countApplyList(int tutor_no);
	//승우 헤더 사이드 리스트
	List<Member> sideListStudent(Member member);
	List<Member> sideListTutor(Member member);
}

