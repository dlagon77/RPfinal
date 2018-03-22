package com.rp.finalp.test.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.test.model.dao.TestDao;
import com.rp.finalp.test.model.vo.Test;

@Service("testService")
public class TestServiceImpl implements TestService{
	
	@Autowired
	private TestDao testDao;

	@Override
	public List<Test> selectTestList(HashMap<String, Object> map) {
		return testDao.selectTestList(map);
	}

	@Override
	public int listCount() {
		return testDao.listCount();
	}

	@Override
	public Test selectTest(int test_no) {
		return testDao.selectTest(test_no);
	}

	@Override
	public int testDeleteone(Test test) {
		return testDao.testDeleteone(test);
	}

	@Override
	public List<Test> selectTestAll() {
		return testDao.selectTestAll();
	}

	@Override
	public int insertTest(Test test) {
		return testDao.insertTest(test);
	}

	@Override
	public int makeTest(Test test) {
		return testDao.makeTest(test);
	}

}
