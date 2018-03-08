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

}
