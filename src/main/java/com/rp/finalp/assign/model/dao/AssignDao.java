package com.rp.finalp.assign.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.assign.model.vo.Assignment;

import java.util.*;

@Repository("assignDao")
public class AssignDao {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Assignment> selectAssignList(HashMap<String, Object> map){
		return mybatis.selectList("assignMapper.selectAll",map);
	}
	
	public int listCount(int tutor_no) {
		int a= mybatis.selectOne("assignMapper.listCount",tutor_no);
		return a;
	}

	public Assignment selectAss(Assignment ass) {
		return mybatis.selectOne("assignMapper.selectAss",ass);
	}

	public int assDeleteone(Assignment ass) {
		return mybatis.delete("assignMapper.assDelete",ass);
	}
	
	public List<Assignment> selectTutorAssList(HashMap<String, Object> map){
		return mybatis.selectList("assignMapper.selectTutorAssList",map);
	}
	
	public Assignment assDetail(int ass_no) {
		return mybatis.selectOne("assignMapper.assDetail",ass_no);
	}

	public int insertAss(Assignment ass) {
		return mybatis.insert("assignMapper.insertAss", ass);
	}

	public int makeAss(Assignment ass) {
		return mybatis.insert("assignMapper.makeAss", ass);
	}

	public List<Assignment> selectSubmitAss(HashMap<String, Object> map) {
		return mybatis.selectList("assignMapper.selectSubmitAss",map);
	}
	
	public int checkSubmit(Assignment ass) {
		return mybatis.selectOne("assignMapper.checkSubmit",ass);
	}
	
	public List<Assignment> searchAss(Map<String, Object> map){
		return mybatis.selectList("assignMapper.searchAss",map);
	}

	public int countAssSearch(Map<String, Object> map) {
		return mybatis.selectOne("assignMapper.countAssSearch",map);
	}

	public int updateAssCount(Assignment ass) {
		return mybatis.update("assignMapper.updateAssCount",ass);
	}
	
	

}
