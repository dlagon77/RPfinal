package com.rp.finalp.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import com.rp.finalp.admin.model.vo.*;

public interface AdminService {

	int boardDelete(Board board);

	List<Member> memberListAll();

	List<Board> boardListAll(int size);

	List<Board> boardSearch(Board board, String check, String send);

	List<Contact> contactList();

	int sendContact(Contact contact);

	List<Board> modalBoard(Member member);

	List<Reply> modalReply(Member member);

	int memberDelete(Member member);

	int replyDelete(Reply reply);

	List<Member> tutorListAll();

	List<Keyword> keywordList();

	int insertKeyword(Keyword keyword);

	void keywordDelete(Keyword keyword);

	void MemberBlackPlus(Member member);

	void MemberBlackMinus(Member member);

	List<Board> kBoardList();

}
