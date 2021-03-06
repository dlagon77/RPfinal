package com.rp.finalp.assign.model.service;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

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
	public int listCount(int tutor_no) {
		return assignDao.listCount(tutor_no);
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
	public List<Assignment> selectTutorAssList(HashMap<String, Object> map){
		return assignDao.selectTutorAssList(map);
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

	@Override
	public int checkSubmit(Assignment ass) {
		return assignDao.checkSubmit(ass);
	}

	@Override
	public List<Assignment> searchAss(Map<String, Object> map) {
		return assignDao.searchAss(map);
	}

	@Override
	public int countAssSearch(Map<String, Object> map) {
		return assignDao.countAssSearch(map);
	}

	@Override
	public int updateAssCount(Assignment ass) {
		return assignDao.updateAssCount(ass);
	}
}
