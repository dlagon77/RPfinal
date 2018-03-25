package com.rp.finalp.assign.model.service;

import java.util.*;


import com.rp.finalp.assign.model.vo.Assignment;


public interface AssignService {
	List<Assignment> selectAssignList(HashMap<String, Object> map);
	int listCount(int tutor_no);
	Assignment selectAss(Assignment ass);
	int assDeleteone(Assignment ass);
	List<Assignment> selectTutorAssList(HashMap<String, Object> map); 
	
	Assignment assDetail(int ass_no);
	int insertAss(Assignment ass);
	int makeAss(Assignment ass);
	List<Assignment> selectSubmitAss(HashMap<String, Object> map);
	int checkSubmit(Assignment ass);
	List<Assignment> searchAss(Map<String, Object> map);
	int countAssSearch(Map<String, Object> map);
	int updateAssCount(Assignment ass);
	
}
