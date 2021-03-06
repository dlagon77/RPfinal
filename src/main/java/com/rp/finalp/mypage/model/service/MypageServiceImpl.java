package com.rp.finalp.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.mypage.model.vo.InqBoard;
import com.rp.finalp.mypage.model.vo.Message;
import com.rp.finalp.mypage.model.vo.MyTestBoard;
import com.rp.finalp.mypage.model.vo.MysubAssign;
import com.rp.finalp.mypage.model.vo.Mysubsc;
import com.rp.finalp.mypage.model.vo.SelectQnaboard;
import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.member.model.vo.Member;
import com.rp.finalp.mypage.model.dao.MypageDao;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDao mypDao;
	
//	@Override
//	public List<Mysubsc> mysubsclist(int mem_no) {
//		System.out.println("serviceimpl: "+mem_no);
//		List list = mypDao.mysubsclist(mem_no);
//		System.out.println(list);
//		return list;
////		return mypDao.mysubsclist(mem_no);
//	}
	@Override
	public List<Member> mysubsclist(int mem_no) {
		return mypDao.mysubsclist(mem_no);
	}

	@Override
	public List<SelectQnaboard> serviceList(int currentPage, int limit, String keyword) {
		return mypDao.serviceList(currentPage,limit,keyword);
	}

	
	public int getListCount(String keyword, int mem_no) {
		return mypDao.getListCount(keyword, mem_no);
	}

	@Override
	public List<SelectQnaboard> serviceMyWrite(int currentPage, int limit, String keyword, int mem_no) {
		return mypDao.serviceMyWrite(currentPage,limit,keyword,mem_no);
	}

	@Override
	public int changeMemInter(int mem_no, String mem_inter) {
		return mypDao.changeMemInter(mem_no,mem_inter);
	}

	@Override
	public Member checkOldPwd(int mem_no) {
		 return mypDao.checkOldPwd(mem_no);
	}

	@Override
	public int changepwd(int mem_no, String newpass2) {
		return mypDao.changepwd(mem_no, newpass2);
	}

	@Override
	public int memberDelete(int mem_no) {
		return mypDao.memberDelete(mem_no);
	}

	@Override
	public SelectQnaboard selectmyQnaList(int sno) {
		return mypDao.selectmyQnaList(sno);
	}

	@Override
	public int changeMemCareer(int mem_no, String sumstr) {
		return mypDao.changeMemCareer(mem_no, sumstr);
	}

	@Override
	public int deleteMyQnaService(int sno) {
		return mypDao.deleteMyQnaService(sno);
	}

	@Override
	public int adminquestion(int mem_no, String inqbtitle, String content) {
		return mypDao.adminquestion(mem_no,inqbtitle,content);
	}

	@Override
	public List<InqBoard> myadminquestlist(int mem_no) {
		return mypDao.myadminquestlist(mem_no);
	}

	@Override
	public int getListCountSubAssign(String keyword, int mem_no) {
		return mypDao.getListCountSubAssign(keyword, mem_no);
	}

	@Override
	public List<Assignment> serviceMyAssign(int currentPage, int limit, String keyword, int mem_no){
		return mypDao.serviceMyAssign(currentPage,limit,keyword,mem_no);
	}

	@Override
	public List<Message> selectMessageList(int size){
		return mypDao.selectMesList(size);
	}

	@Override
	public int listCount() {
		return mypDao.listCount();
	}

	@Override
	public MysubAssign selectmyassigndetail(int sno) {
		return mypDao.selectmyassigndetail(sno);
	}

	@Override
	public int getListCountTest(String keyword, int mem_no) {
		return mypDao.getListCountTest(keyword, mem_no);
	}

	@Override
	public List<Assignment> serviceMyTest(int currentPage, int limit, String keyword, int mem_no) {
		return mypDao.serviceMyTest(currentPage,limit,keyword,mem_no);
	}

	@Override
	public MyTestBoard selectmyTestdetail(int sno) {
		return mypDao.selectmyTestdetail(sno);
	}

	@Override
	public Member checkMeminfo(int mem_no) {
		return mypDao.checkMeminfo(mem_no);
	}
	
	@Override
	public int insertMsg(Message msg, int mv) {
		return mypDao.insertMes(msg,mv);
	}

	@Override
	public List<Member> emailList() {
		return mypDao.mEmailList();
	}

	@Override
	public Message msgListOne(int mes_no) {
		return mypDao.selectMesListOne(mes_no);
	}

	

	

}
