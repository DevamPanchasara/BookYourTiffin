package com.project.dao;

import java.util.List;

import com.project.model.MealVO;

public interface MealDAO {

	void saveMeal(MealVO MealVO);

	List<?> getMeal();

	List<?> getMealById(MealVO mealVO);

	List<?> getTiffinByType(MealVO mealvo);

	List<?> getMealByVendor(int id);
}
