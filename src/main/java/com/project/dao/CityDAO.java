package com.project.dao;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;

public interface CityDAO {

	void saveCity(CityVO cityVO);

	List<?> getCity();

	List<?> getCityById(CityVO cityvo);

}
