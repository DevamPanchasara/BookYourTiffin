package com.project.service;

import java.util.List;

import com.project.model.AreaVO;
import com.project.model.CityVO;

public interface AreaService {
	
	public void saveArea(AreaVO areaVO);

	public List<?> getArea();

	public List<?> getAreaById(AreaVO areavo);
	
	List<?> getAreaByCity(CityVO cityVO);

}
