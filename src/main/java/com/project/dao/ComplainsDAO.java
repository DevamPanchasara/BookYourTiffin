package com.project.dao;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplainsDAO {

	void saveComplain(ComplainVO complainVO);

	List<?> getComplains(ComplainVO complainVO);

	List<?> complainGetById(ComplainVO complainVO);

	List<?> getAllComplains();

	List<?> getUserComplainsId();


}
