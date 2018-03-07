package com.rp.finalp.assign.service;

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


}
