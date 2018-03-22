package com.rp.finalp.lecture.model.service;

import java.util.HashMap;
import java.util.List;

import com.rp.finalp.lecture.model.vo.Lecture;
import com.rp.finalp.member.model.vo.Member;

public interface LectureService {

	Lecture selectReadCount(String videoId);

	int addReadCount(String videoId);
	
	Lecture selectTutorLecture(int tutor_no);

	String selectChannelId(int tutor_no);

	int insertLecture(Lecture lecture);

	List<Lecture> selectLectureList(int tutor_no);

	int applySuccess(Lecture lecture);

	int applyFail(Lecture lecture);

	int deleteClassStudent(Lecture lecture);

	int countLectureList(int tutor_no);
	
	
}
