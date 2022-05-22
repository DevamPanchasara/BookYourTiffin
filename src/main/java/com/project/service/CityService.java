package com.project.service;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;

public interface CityService {

	void saveCity(CityVO cityVO);

	List<?> getCity();

	List<?> getCityById(CityVO cityvo);

}
