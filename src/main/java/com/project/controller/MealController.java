package com.project.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.MealVO;
import com.project.service.MealService;

@Controller
public class MealController {
	
	@Autowired 
	private MealService mealService;
	
	@GetMapping("admin/addMeal")
	public ModelAndView addMeal() 
	{
		return new ModelAndView("admin/addMeal","mealVO",new MealVO());
	}
	
	@PostMapping("admin/saveMeal")
	public ModelAndView saveMeal(@ModelAttribute MealVO mealVO) 
	{
		this.mealService.saveMeal(mealVO);
		return new ModelAndView("redirect:viewMeal");
	}
	
	@GetMapping("admin/viewMeal")
	public ModelAndView viewMeal() {
		List<?> mealList = this.mealService.getMeal();
		return new ModelAndView("admin/viewMeal", "MealList", mealList);
	}
	
	@GetMapping("admin/editMeal")
	public ModelAndView editMeal(@RequestParam int id, MealVO MealVO) {
		MealVO.setId(id);
		List<?> mealList = this.mealService.getMealById(MealVO);
		return new ModelAndView("admin/addMeal", "mealVO", mealList.get(0));
	}
	
	@GetMapping("admin/deleteMeal")
	public ModelAndView deleteBrand(@RequestParam int id, MealVO MealVO) {
		MealVO.setId(id);
		List<?> mealList = this.mealService.getMealById(MealVO);

		MealVO mealVO2 = (MealVO) mealList.get(0);
		mealVO2.setStatus(false);
		this.mealService.saveMeal(mealVO2);
		return new ModelAndView("redirect:viewMeal");
	}

}
