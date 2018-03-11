package com.rp.finalp.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.member.model.vo.Member;
import com.rp.finalp.mypage.model.dao.MypageDao;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDao mypDao;
	
	@Override
	public List<Member> mysubsclist(int mem_no) {
		return mypDao.mysubsclist(mem_no);
	}

	

}
