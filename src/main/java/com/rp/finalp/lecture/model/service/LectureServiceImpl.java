package com.rp.finalp.lecture.model.service;

import java.util.HashMap;
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
	public List<Lecture> selectLectureList(int tutor_no) {
		return lectureDao.selectLectureList(tutor_no);
	}

	@Override
	public int applySuccess(Lecture lecture) {
		return lectureDao.applySuccess(lecture);
	}

	@Override
	public int applyFail(Lecture lecture) {
		return lectureDao.applyFail(lecture);
	}

	@Override
	public int deleteClassStudent(Lecture lecture) {
		return lectureDao.deleteClassStudent(lecture);
	}

	@Override
	public int countLectureList(int tutor_no) {
		return lectureDao.countLectureList(tutor_no);
	}

	@Override
	public List<Member> selectReviewList(String videoId) {
		return lectureDao.selectReviewList(videoId);
	}

	@Override
	public int insertLectureReview(Member member) {
		return lectureDao.insertLectureReview(member);
	}

	@Override
	public Lecture selectIntroduce(int tutor_no) {
		return lectureDao.selectIntroduce(tutor_no);
	}

	@Override
	public List<Lecture> linkedCategory(HashMap<String, Object> map) {
		return lectureDao.linkedCategory(map);
	}
	
	
	
	
	
}
