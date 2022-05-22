package com.project.dao;

import java.util.List;

import com.project.model.DishVO;
import com.project.model.LoginVO;
import com.project.model.MealVO;
import com.project.model.TiffinMenuVO;
import com.project.model.VendorVO;

public interface DishDAO {

	void saveDish(DishVO dishVO);

	List<?> getDish(TiffinMenuVO tiffinMenuVO1);

	List<?> getTiffinDishByTiffinId(int id);

	List<?> getTiffinByDay(String day);

	List<?> getTiffinMenuByMealType(MealVO mealVO1, VendorVO vendorVO1, String string);

	List<?> getDishesByID(LoginVO loginvo1);

}
