package com.rp.finalp.mypage.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.mypage.model.vo.InqBoard;
import com.rp.finalp.mypage.model.vo.Message;
import com.rp.finalp.mypage.model.vo.MyTestBoard;
import com.rp.finalp.mypage.model.vo.MysubAssign;
import com.rp.finalp.mypage.model.vo.Mysubsc;
import com.rp.finalp.mypage.model.vo.SelectQnaboard;
import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.member.model.vo.Member;

@Repository("mypageDao")
public class MypageDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
//	public List<Mysubsc> mysubsclist(int mem_no) {
//		List<Mysubsc> list = mybatis.selectList("mypageMapper.mysubscribe", mem_no);
//		System.out.println(list);
//		return list;
////		return mybatis.selectList("mypageMapper.mysubscribe", mem_no);
//	}
	public List<Member> mysubsclist(int mem_no) {
		return mybatis.selectList("mypageMapper.mysubscribe", mem_no);
	}

	public List<SelectQnaboard> serviceList(int startRow, int endRow, String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow",startRow);
		map.put("endRow",endRow);
		if(!keyword.equals("")){
			map.put("keyword","%"+keyword+"%");
			map.put("isKeyword",1);
		}
		return mybatis.selectList("mypageMapper.serviceList", map);
	}


		public int getListCount(String keyword, int mem_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(!keyword.equals("")){
			map.put("isKeyword", 1);
			map.put("keyword", "%"+keyword+"%");
		}
		if(keyword.equals("")){
			map.put("isKeyword", 0);
//			map.put("keyword", "%"+keyword+"%");
		}
		if(mem_no !=0) {
			map.put("mem_no", mem_no);
		}
		return mybatis.selectOne("mypageMapper.getListCount", map);
	}

		public List<SelectQnaboard> serviceMyWrite(int startRow, int endRow, String keyword, int mem_no) 
		{
			System.out.println("serviceMyWrite mem_no>"+mem_no);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("startRow",startRow);
			map.put("endRow",endRow);
			if(!keyword.equals("")){
				map.put("keyword","%"+keyword+"%");
				map.put("isKeyword",1);
			}
			if(mem_no !=0) {
				map.put("mem_no", mem_no);
				map.put("ismemno", 1);
			}
			return mybatis.selectList("mypageMapper.serviceMyWrite", map);
		}

		public int changeMemInter(int mem_no, String mem_inter) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("mem_no",mem_no);
			map.put("mem_inter",mem_inter);
			return mybatis.update("mypageMapper.changeMemInter", map);
		}

		public Member checkOldPwd(int mem_no) {
			return mybatis.selectOne("mypageMapper.CurrentMemberPwd", mem_no);
		}

		public int changepwd(int mem_no, String newpass2) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("mem_no",mem_no);
			map.put("mem_pwd",newpass2);
			return mybatis.update("mypageMapper.changeMemPwd", map);
		}

		public int memberDelete(int mem_no) {
			return mybatis.delete("mypageMapper.deleteMember", mem_no);
		}

		public SelectQnaboard selectmyQnaList(int sno) {
			return mybatis.selectOne("mypageMapper.selectmyQnaList", sno);
		}

		public int changeMemCareer(int mem_no, String sumstr) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("mem_no",mem_no);
			map.put("mem_career",sumstr);
			return mybatis.update("mypageMapper.changeMemCareer", map);
		}

		public int deleteMyQnaService(int sno) {
			return mybatis.delete("mypageMapper.deleteMyQnaService", sno);
		}

		public int adminquestion(int mem_no, String inqbtitle, String content) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("inq_writer",mem_no);
			map.put("inq_title",inqbtitle);
			map.put("inq_content",content);
			return mybatis.insert("mypageMapper.adminquestion", map);
		}

		public List<InqBoard> myadminquestlist(int mem_no) {
			return mybatis.selectList("mypageMapper.myadminquestlist", mem_no);
			/*InqBoard inqBoard = mybatis.selectOne("mypageMapper.myadminquestlist", mem_no);
			System.out.println(inqBoard.toString());
			return inqBoard;*/
		}

		public int getListCountSubAssign(String keyword, int mem_no) {
			Map<String, Object> map = new HashMap<String, Object>();
			if(!keyword.equals("")){
				map.put("isKeyword", 1);
				map.put("keyword", "%"+keyword+"%");
			}
			if(keyword.equals("")){
				map.put("isKeyword", 0);
//				map.put("keyword", "%"+keyword+"%");
			}
			if(mem_no !=0) {
				map.put("mem_no", mem_no);
			}
			return mybatis.selectOne("mypageMapper.getListCountSubAssign", map);
		}

		public List<Assignment> serviceMyAssign(int startRow, int endRow, String keyword, int mem_no)  {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("startRow",startRow);
				map.put("endRow",endRow);
				if(!keyword.equals("")){
					map.put("keyword","%"+keyword+"%");
					map.put("isKeyword",1);
				}
				if(keyword.equals("")){
					map.put("isKeyword", 0);
//					map.put("keyword", "%"+keyword+"%");
				}
				if(mem_no !=0) {
					map.put("mem_no", mem_no);
//					map.put("ismemno", 1);
				}
				List<Assignment> list = mybatis.selectList("mypageMapper.serviceMyAssign", map);
				System.out.println("dao:"+list);
				return list;
//				return mybatis.selectList("mypageMapper.serviceMyAssign", map);
				
				
			}
		
		public List<Message> selectMesList(int size){
			return mybatis.selectList("MesboardMapper.selectAll", size);
		}
		
		public int listCount() {
			return mybatis.selectOne("MesboardMapper.listCount");
		}

		//내가제출한 과제 상세보기
		public MysubAssign selectmyassigndetail(int sno) {
			return mybatis.selectOne("mypageMapper.selectmyassigndetail",sno);
		}

		//내가 응시한 시험 목록
		public int getListCountTest(String keyword, int mem_no) {
			Map<String, Object> map = new HashMap<String, Object>();
			if(!keyword.equals("")){
				map.put("isKeyword", 1);
				map.put("keyword", "%"+keyword+"%");
			}
			if(keyword.equals("")){
				map.put("isKeyword", 0);
//				map.put("keyword", "%"+keyword+"%");
			}
			if(mem_no !=0) {
				map.put("mem_no", mem_no);
			}
			return mybatis.selectOne("mypageMapper.getListCountTest", map);
		}

		public List<Assignment> serviceMyTest(int startRow, int endRow, String keyword, int mem_no) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("startRow",startRow);
			map.put("endRow",endRow);
			if(!keyword.equals("")){
				map.put("keyword","%"+keyword+"%");
				map.put("isKeyword",1);
			}
			if(keyword.equals("")){
				map.put("isKeyword", 0);
//				map.put("keyword", "%"+keyword+"%");
			}
			if(mem_no !=0) {
				map.put("mem_no", mem_no);
//				map.put("ismemno", 1);
			}
			List<Assignment> list = mybatis.selectList("mypageMapper.serviceMyTest", map);
			System.out.println("dao:"+list);
			return list;
//			return mybatis.selectList("mypageMapper.serviceMyAssign", map);
		}

		public MyTestBoard selectmyTestdetail(int sno) {
			return mybatis.selectOne("mypageMapper.selectmyTestdetail",sno);
		}

		public Member checkMeminfo(int mem_no) {
			return mybatis.selectOne("mypageMapper.checkMeminfo", mem_no);
		}
		public int insertMes(Message msg, int mv) {
			msg.setMes_receiver_no(mv);
			return mybatis.insert("MesboardMapper.msginsert", msg);
		}

		public List<Member> mEmailList(){
			return mybatis.selectList("MesboardMapper.emailList");
		}

		public Message selectMesListOne(int mes_no) {
			return mybatis.selectOne("MesboardMapper.msgDetail", mes_no);
		}
}
