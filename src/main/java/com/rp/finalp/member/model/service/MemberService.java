package com.rp.finalp.member.model.service;

import java.util.ArrayList;

import com.rp.finalp.member.model.vo.Member;


public interface MemberService {
	Member loginCheck(Member member);
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String userId);
	ArrayList<Member> memberAll();
	int updateMemberImg(Member member);
	
}
