package com.rp.finalp.lecture.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;

@Repository("LectureDao")
public class LectureDao {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public Lecture selectReadCount(String videoId) {
		return mybatis.selectOne("lectureMapper.selectReadCount", videoId);
	}


	public int addReadCount(String videoId) {
		return mybatis.update("lectureMapper.addReadCount", videoId);
	}
	
	public Lecture selectTutorLecture(int tutor_no) {
		
		return mybatis.selectOne("lectureMapper.lectureView",tutor_no);
	}

	public String selectChannelId(int tutor_no) {
		return mybatis.selectOne("lectureMapper.selectChannelId",tutor_no);
	}


	public int insertLecture(Lecture lecture) {
		return mybatis.insert("lectureMapper.insertLectre", lecture);
	}

	public List<Lecture> selectLectureList(int tutor_no) {
		return mybatis.selectList("lectureMapper.selectlectureList",tutor_no);
	}


	public int applySuccess(Lecture lecture) {
		return mybatis.update("lectureMapper.applySuccess", lecture);
	}


	public int applyFail(Lecture lecture) {
		return mybatis.delete("lectureMapper.applyFail", lecture);
	}


	public int deleteClassStudent(Lecture lecture) {
		return mybatis.delete("lectureMapper.deleteClassStudent", lecture);
	}


	public int countLectureList(int tutor_no) {
		return mybatis.selectOne("lectureMapper.countLectureList", tutor_no);
	}


	public List<Member> selectReviewList(String videoId) {
		return mybatis.selectList("lectureMapper.selectReviewList", videoId);
	}


	public int insertLectureReview(Member member) {
		return mybatis.insert("lectureMapper.insertLectureReview", member);
	}


	public Lecture selectIntroduce(int tutor_no) {
		return mybatis.selectOne("lectureMapper.selectIntroduce", tutor_no);
	}

	

}
