package com.rp.finalp.member.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public Member loginCheck(Member member) {
		/*member = mybatis.selectOne("memberMapper.loginMember", 
				member);
		System.out.println("dao : " + member);
		return member;*/
		return mybatis.selectOne("memberMapper.loginMember", member);
	}

	public int insertMember(Member member) {
		return mybatis.insert("memberMapper.insertMember", member);		
	}

	public int updateMemberImg(Member member) {
		return mybatis.update("memberMapper.updateMemberImg", member);
	}

	public List<Member> selectTutorList() {
		return mybatis.selectList("memberMapper.selectTutorList");
		
	}
	
	public int selectTutorCount() {
		return mybatis.selectOne("memberMapper.selectTutorCount");
	}
	
	public List<Member> selectReview(int tutor_no) {
		return mybatis.selectList("memberMapper.selectReview",tutor_no);
	}
	
	public int selectReviewCount(int tutor_no) {
		return mybatis.selectOne("memberMapper.selectReviewCount",tutor_no);
	}
	
	//id 중복확인
	public int checkId(Member member) {
		return mybatis.selectOne("memberMapper.checkId", member);
	}
	
	public int insertApply(Lecture lecture) {
		return mybatis.insert("memberMapper.apply",lecture);
		
	}

	public int checkApply(Lecture lecture) {
		return mybatis.selectOne("memberMapper.checkApply",lecture);
	}

	public int deApply(Lecture lecture) {
		return mybatis.delete("memberMapper.deleteApply",lecture);
	}

	public int insertReview(Member member) {
		return mybatis.insert("memberMapper.insertReview",member);
	}

	public int checkReady(Lecture lecture) {
		return mybatis.selectOne("memberMapper.checkReady",lecture);
	}

	public Member todaycheck() {
		return mybatis.selectOne("memberMapper.todaycheck");
	}

	public int updateCount(Member today) {
		return mybatis.update("memberMapper.updateCount",today);
	}

	public void insertCount() {
		mybatis.insert("memberMapper.insertCount");
	}
	
	public List<Member> selectStudentList(HashMap<String, Object> map) {
		return mybatis.selectList("memberMapper.selectStudentList", map);
	}

	public int countStudentList(int tutor_no) {
		return mybatis.selectOne("memberMapper.countStudentList", tutor_no);
	}
	
	public List<Member> applyClassList(HashMap<String, Object> map) {
		return mybatis.selectList("memberMapper.applyClassList", map);
	}
	
	public int countApplyList(int tutor_no) {
		return mybatis.selectOne("memberMapper.countApplyList", tutor_no);
	}
}


