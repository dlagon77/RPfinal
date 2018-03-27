package com.rp.finalp.mypage.model.service;

import java.util.List;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.board.model.vo.QnaBoard;
import com.rp.finalp.mypage.model.vo.InqBoard;
import com.rp.finalp.mypage.model.vo.Message;
import com.rp.finalp.mypage.model.vo.MyTestBoard;
import com.rp.finalp.mypage.model.vo.MysubAssign;
import com.rp.finalp.mypage.model.vo.Mysubsc;
import com.rp.finalp.mypage.model.vo.SelectQnaboard;
import com.rp.finalp.member.model.vo.Member;

public interface MypageService {

	List<Member> mysubsclist(int mem_no);
//	List<Mysubsc> mysubsclist(int mem_no);


	List<SelectQnaboard> serviceList(int currentPage, int limit, String keyword);

	int getListCount(String keyword, int mem_no);


	List<SelectQnaboard> serviceMyWrite(int currentPage, int limit, String keyword, int mem_no);


	int changeMemInter(int mem_no, String mem_inter);


	Member checkOldPwd(int mem_no);

	int changepwd(int mem_no, String newpass2);


	int memberDelete(int mem_no);


	public SelectQnaboard selectmyQnaList(int sno);


	int changeMemCareer(int mem_no, String sumstr);


	int deleteMyQnaService(int sno);


	int adminquestion(int mem_no, String inqbtitle, String content);

	//마이페이지 - 일대일문의 - 내 문의 기록 리스트
	List<InqBoard> myadminquestlist(int mem_no);


	int getListCountSubAssign(String keyword, int mem_no);


	List<Assignment> serviceMyAssign(int startRow, int endRow, String keyword, int mem_no);

	List<Message> selectMessageList(int size);

	int listCount();


	public MysubAssign selectmyassigndetail(int sno);


	int getListCountTest(String keyword, int mem_no);


	List<Assignment> serviceMyTest(int startRow, int endRow, String keyword, int mem_no);


	public MyTestBoard selectmyTestdetail(int sno);


	Member checkMeminfo(int mem_no);

	int insertMsg(Message msg, int mv);

	List<Member> emailList();


	Message msgListOne(int mes_no);
	
}
