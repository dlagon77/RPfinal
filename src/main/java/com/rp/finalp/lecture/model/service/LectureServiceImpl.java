package com.rp.finalp.lecture.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.lecture.model.dao.LectureDao;
import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;

@Service("lectureService")
public class LectureServiceImpl implements LectureService{
	@Autowired
	private LectureDao lectureDao;
	
	@Override
	public Lecture selectReadCount(String videoId) {
		return lectureDao.selectReadCount(videoId);
	}

	@Override
	public int addReadCount(String videoId) {
		return lectureDao.addReadCount(videoId);
	}
	
	@Override
	public Lecture selectTutorLecture(int tutor_no) {
		return lectureDao.selectTutorLecture(tutor_no);

	}

	@Override
	public String selectChannelId(int tutor_no) {
		return lectureDao.selectChannelId(tutor_no);
	}

	@Override
	public int insertLecture(Lecture lecture) {
		return lectureDao.insertLecture(lecture);
	}

	@Override
	public List<Member> applyClassList(int tutor_no) {
		return lectureDao.applyClassList(tutor_no);
	}
	
	
	
	
	
}
