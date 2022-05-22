package com.project.service;

import java.util.List;

import com.project.model.TiffinMenuVO;

public interface TiffinMenuService {

	public void saveTiffinMenu(TiffinMenuVO tiffinMenuVO);

	public List<?> getTiffinMenu(int loginId);

	public List<?> getTiffinMenuById(TiffinMenuVO tiffinMenuVO);

	public List<?> getTiffinMenuByDayAndLoginId(int loginId, String day);

	public List<?> getTiffinMenuVendorWise();
}
