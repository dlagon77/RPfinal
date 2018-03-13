package com.rp.finalp.lecture.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.lecture.model.vo.Lecture;

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

}
