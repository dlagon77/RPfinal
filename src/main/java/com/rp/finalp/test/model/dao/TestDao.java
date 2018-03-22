package com.rp.finalp.test.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rp.finalp.test.model.vo.Test;

@Repository("testDao")
public class TestDao {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Test> selectTestList(HashMap<String, Object> map){
		return mybatis.selectList("testMapper.selectAll",map);
	}
	
	public int listCount() {
		int a=mybatis.selectOne("testMapper.listCount");
		return a;
	}
	
	public Test selectTest(int test_no) {
		return mybatis.selectOne("testMapper.selectTest",test_no);
	}
	
	public int testDeleteone(Test test) {
		return mybatis.delete("testMapper.testDelete",test);
	}

	public List<Test> selectTestAll() {
		return mybatis.selectList("testMapper.selectAllTest");
	}

	public int insertTest(Test test) {
		return mybatis.insert("testMapper.insertTest", test);
	}

	public int makeTest(Test test) {
		return mybatis.insert("testMapper.makeTest", test);
	}
}
