package com.rp.finalp.lecture.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.lecture.model.dao.LectureDao;
import com.rp.finalp.lecture.model.vo.Lecture;

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
		System.out.println(tutor_no);
		return lectureDao.selectTutorLecture(tutor_no);

	}
	
	
	
}
