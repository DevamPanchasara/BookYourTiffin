package com.project.service;

import java.util.List;

import com.project.model.MealVO;

public interface MealService {

	void saveMeal(MealVO MealVO);
	
	List<?> getMeal();

	List<?> getMealById(MealVO mealVO);

	List<?> getTiffinByType(MealVO mealvo);

	List<?> getMealByVendor(int id);
}
