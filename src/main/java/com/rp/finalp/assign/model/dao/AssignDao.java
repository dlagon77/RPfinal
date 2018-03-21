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
	
	public int listCount() {
		int a= mybatis.selectOne("assignMapper.listCount");
		return a;
	}

	public Assignment selectAss(Assignment ass) {
		return mybatis.selectOne("assignMapper.selectAss",ass);
	}

	public int assDeleteone(Assignment ass) {
		return mybatis.delete("assignMapper.assDelete",ass);
	}
	
	public List<Assignment> selectTutorAssList(int tutor_no){
		return mybatis.selectList("assignMapper.selectTutorAssList",tutor_no);
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

}
