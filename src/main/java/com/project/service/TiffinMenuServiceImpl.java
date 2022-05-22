package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.TiffinMenuDAO;
import com.project.model.TiffinMenuVO;

@Service
@Transactional
public class TiffinMenuServiceImpl implements TiffinMenuService {

	@Autowired
	TiffinMenuDAO TiffinMenuDAO;

	public void saveTiffinMenu(TiffinMenuVO tiffinMenuVO) {
		this.TiffinMenuDAO.saveTiffinMenu(tiffinMenuVO);

	}

	public List<?> getTiffinMenu(int loginId) {
		List<?> tiffinmenuList = this.TiffinMenuDAO.getTiffinMenu(loginId);
		return tiffinmenuList;
	}

	public List<?> getTiffinMenuById(TiffinMenuVO tiffinMenuVO) {
		List<?> tiffinmenuList = this.TiffinMenuDAO.getTiffinMenuById(tiffinMenuVO);
		return tiffinmenuList;
	}

	@Override
	public List<?> getTiffinMenuByDayAndLoginId(int loginId, String day) {
		List<?> tiffinmenuList = this.TiffinMenuDAO.getTiffinMenuByDayAndLoginId(loginId, day);
		return tiffinmenuList;
	}

	@Override
	public List<?> getTiffinMenuVendorWise() {
		List<?> tiffinmenuList = this.TiffinMenuDAO.getTiffinMenuVendorWise();
		return tiffinmenuList;
	}
}
