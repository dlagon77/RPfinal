package com.rp.finalp.mypage.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.member.model.vo.Member;

@Repository("mypageDao")
public class MypageDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Member> mysubsclist(int mem_no) {
		return mybatis.selectList("memberMapper.mysubscribe", mem_no);
	}

}
