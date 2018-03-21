package com.rp.finalp.assign.model.service;

import java.util.HashMap;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rp.finalp.assign.model.dao.AssignDao;
import com.rp.finalp.assign.model.vo.Assignment;

@Service("assignService")
public class AssignServiceImpl implements AssignService{

	@Autowired
	private AssignDao assignDao;
	
	@Override
	public List<Assignment> selectAssignList(HashMap<String, Object> map) {
		return assignDao.selectAssignList(map);
	}

	@Override
	public int listCount() {
		return assignDao.listCount();
	}

	@Override
	public Assignment selectAss(Assignment ass) {
		return assignDao.selectAss(ass);
	}

	@Override
	public int assDeleteone(Assignment ass) {
		return assignDao.assDeleteone(ass);
		
	}

	@Override
	public List<Assignment> selectTutorAssList(int tutor_no){
		return assignDao.selectTutorAssList(tutor_no);
	}

	@Override
	public Assignment assDetail(int ass_no) {
		return assignDao.assDetail(ass_no);
	}

	@Override
	public int insertAss(Assignment ass) {
		return assignDao.insertAss(ass);
	}

	@Override
	public int makeAss(Assignment ass) {
		return assignDao.makeAss(ass);
	}

	@Override
	public List<Assignment> selectSubmitAss(HashMap<String, Object> map) {
		return assignDao.selectSubmitAss(map);
	}
}
