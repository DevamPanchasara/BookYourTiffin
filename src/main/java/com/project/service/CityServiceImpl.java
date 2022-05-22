package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.AreaVO;
import com.project.model.CityVO;

@Service
public class CityServiceImpl implements CityService {
	@Autowired
	CityDAO CityDAO;

	@Transactional
	public void saveCity(CityVO cityVO) {
		this.CityDAO.saveCity(cityVO);
	}

	@Transactional
	public List<?> getCity() {
		List<?> ls = this.CityDAO.getCity();
		return ls;
	}

	@Transactional
	public List<?> getCityById(CityVO cityvo) {
		List<?> ls = this.CityDAO.getCityById(cityvo);
		return ls;
	}

}
