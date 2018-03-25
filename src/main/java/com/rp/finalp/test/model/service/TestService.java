package com.rp.finalp.test.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.test.model.vo.Test;

public interface TestService {
	List<Test> selectTestList(HashMap<String, Object> map);
	int listCount(int tutor_no);
	Test selectTest(int test_no);
	List<Test> selectTestAll();
	int testDeleteone(Test test);
	int insertTest(Test test);
	int makeTest(Test test);
	List<Test> searchTest(Map<String, Object> map);
	int countTestSearch(Map<String, Object> map); 
	List<Test> selectSubmitTest(HashMap<String, Object> map);
	int checkSubmit(Test test);
}
