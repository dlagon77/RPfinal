package com.rp.finalp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public Member loginCheck(Member member) {
		/*member = mybatis.selectOne("memberMapper.loginMember", 
				member);
		System.out.println("dao : " + member);
		return member;*/
		return mybatis.selectOne("memberMapper.loginMember", member);
	}

	public int insertMember(Member member) {
		return mybatis.insert("memberMapper.insertMember", member);		
	}

}


