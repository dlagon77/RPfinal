package com.rp.finalp.assign.service;

import java.util.*;


import com.rp.finalp.assign.model.vo.Assignment;


public interface AssignService {
	List<Assignment> selectAssignList(HashMap<String, Object> map);
	int listCount();
	Assignment selectAss(Assignment ass);
	int assDeleteone(Assignment ass); 
}
