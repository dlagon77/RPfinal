package com.rp.finalp.lecture.model.service;

import com.rp.finalp.lecture.model.vo.Lecture;

public interface LectureService {

	Lecture selectReadCount(String videoId);

	int addReadCount(String videoId);

}
