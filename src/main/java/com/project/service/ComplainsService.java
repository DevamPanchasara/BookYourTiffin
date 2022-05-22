package com.project.service;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplainsService {

	void saveComplain(ComplainVO complainVO);

	List<?> getComplains(ComplainVO complainVO);

	List<?> complainGetById(ComplainVO complainVO);

	List<?> getAllComplains();

	List<?> getUserComplainsId();


}
