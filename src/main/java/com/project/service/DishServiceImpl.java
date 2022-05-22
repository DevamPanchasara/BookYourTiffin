package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.DishDAO;
import com.project.model.DishVO;
import com.project.model.LoginVO;
import com.project.model.MealVO;
import com.project.model.TiffinMenuVO;
import com.project.model.VendorVO;

@Service
@Transactional
public class DishServiceImpl implements DishService {

	@Autowired
	private DishDAO dishDAO;

	@Override
	public void saveDish(DishVO dishVO) {
		this.dishDAO.saveDish(dishVO);
	}

	public List<?> getDish(TiffinMenuVO tiffinMenuVO1) {
		List<?> dishList = this.dishDAO.getDish(tiffinMenuVO1);
		return dishList;
	}

	@Override
	public List<?> getTiffinDishByTiffinId(int id) {
		// TODO Auto-generated method stub
		return this.dishDAO.getTiffinDishByTiffinId(id);
	}

	@Override
	public List<?> getTiffinByDay(String day) {
		// TODO Auto-generated method stub
		return this.dishDAO.getTiffinByDay(day);
	}

	@Override
	public List<?> getTiffinMenuByMealType(MealVO mealVO1, VendorVO vendorVO1, String string) {
		List<?> dishList = this.dishDAO.getTiffinMenuByMealType(mealVO1, vendorVO1, string);
		return dishList;
	}

	@Override
	public List<?> getDishesByID(LoginVO loginvo1) {
		List<?> dishList = this.dishDAO.getDishesByID(loginvo1);
		return dishList;
	}
}
