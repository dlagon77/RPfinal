package com.rp.finalp.lecture.model.dao;

import java.util.ArrayList;
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


	public List<Member> applyClassList(int tutor_no) {
		return mybatis.selectList("lectureMapper.applyClassList", tutor_no);
	}

}
