package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.MealDAO;
import com.project.model.MealVO;

@Service
@Transactional
public class MealServiceImpl implements MealService {

	@Autowired
	MealDAO mealdao;

	public void saveMeal(MealVO MealVO) {
		this.mealdao.saveMeal(MealVO);
	}

	public List<?> getMeal() {
		List<?> mealList = this.mealdao.getMeal();
		return mealList;
	}

	public List<?> getMealById(MealVO mealVO) {
		List<?> mealList = this.mealdao.getMealById(mealVO);
		return mealList;
	}

	public List<?> getTiffinByType(MealVO mealvo) {
		List<?> mealList = this.mealdao.getTiffinByType(mealvo);
		return mealList;
	}

	@Override
	public List<?> getMealByVendor(int id) {
		List<?> mealList = this.mealdao.getMealByVendor(id);
		return mealList;
	}

}
