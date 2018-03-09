package com.rp.finalp.test.model.service;

import java.util.HashMap;
import java.util.List;

import com.rp.finalp.assign.model.vo.Assignment;
import com.rp.finalp.test.model.vo.Test;

public interface TestService {
	List<Test> selectTestList(HashMap<String, Object> map);
	int listCount();
	Test selectTest(Test test);
	int testDeleteone(Test test); 
}
