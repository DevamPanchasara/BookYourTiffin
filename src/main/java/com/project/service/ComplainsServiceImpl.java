package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplainsDAO;
import com.project.model.ComplainVO;

@Service
public class ComplainsServiceImpl implements ComplainsService{
	
	@Autowired ComplainsDAO complainsDAO;
	
	public void saveComplain(ComplainVO complainVO)
	{
		this.complainsDAO.saveComplain(complainVO);
	}

	public List<?> getComplains(ComplainVO complainVO) {
		List<?> complainList = this.complainsDAO.getComplains(complainVO);
		return complainList;
	}

	public List<?> complainGetById(ComplainVO complainVO) {
		List<?> complainList = this.complainsDAO.complainGetById(complainVO);
		return complainList;
	}

	public List<?> getAllComplains() {
		List<?> complainList = this.complainsDAO.getAllComplains();
		return complainList;
	}

	public List<?> getUserComplainsId() {
		List<?> userComplainList = this.complainsDAO.getUserComplainsId();
		return userComplainList;
	}
}
