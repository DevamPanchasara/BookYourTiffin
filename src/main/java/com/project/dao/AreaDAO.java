package com.project.dao;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;

public interface AreaDAO {

	void saveArea(AreaVO areaVO);

	List<?> getArea();

	List<?> getAreaById(AreaVO areaVO);

	List<?> getAreaByCity(CityVO cityVO);

}
