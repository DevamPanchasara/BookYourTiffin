package com.project.dao;

import java.util.List;

import com.project.model.TiffinMenuVO;

public interface TiffinMenuDAO {

	void saveTiffinMenu(TiffinMenuVO tiffinMenuVO);

	List<?> getTiffinMenu(int loginId);

	List<?> getTiffinMenuById(TiffinMenuVO tiffinMenuVO);

	List<?> getTiffinMenuByDayAndLoginId(int loginId, String day);
	
	List<?> getTiffinMenuVendorWise();
}
