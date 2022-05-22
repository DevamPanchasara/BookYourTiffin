package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.AreaDAO;
import com.project.model.AreaVO;
import com.project.model.CityVO;

@Service
public class AreaServiceImpl implements AreaService {

	@Autowired
	AreaDAO AreaDAO;

	@Transactional
	public void saveArea(AreaVO areaVO) {
		this.AreaDAO.saveArea(areaVO);
	}

	@Transactional
	public List<?> getArea() {
		List<?> ls = this.AreaDAO.getArea();
		return ls;
	}

	@Transactional
	public List<?> getAreaById(AreaVO areaVO) {
		List<?> ls = this.AreaDAO.getAreaById(areaVO);
		return ls;
	}

	@Transactional
	public List<?> getAreaByCity(CityVO cityVO) {
		return this.AreaDAO.getAreaByCity(cityVO);
	}
}
