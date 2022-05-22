package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.model.CityVO;
import com.project.service.CityService;

@Controller
public class CityController 
{
	@Autowired 
	private CityService citySevice;
	
	@GetMapping("admin/addCity")
	public ModelAndView addCity() {
		return new ModelAndView("admin/addCity","cityVO",new CityVO());
	}
	
	@PostMapping("admin/saveCity")
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO) 
	{
		this.citySevice.saveCity(cityVO);
		return new ModelAndView("redirect:viewCity","cityVO",new CityVO());
		
	}
	
	
	@GetMapping("admin/viewCity")
	public ModelAndView viewCity() 
	{
		List<?> CityList = this.citySevice.getCity();
		return new ModelAndView("admin/viewCity", "CityList", CityList);
	}
	
	@GetMapping("admin/deleteCity")
	public ModelAndView deleteCity(@ModelAttribute CityVO cityVO,@RequestParam int id) 
	{
		cityVO.setId(id);
		List<?> cityList = this.citySevice.getCityById(cityVO);
		
		CityVO cityVO1 = (CityVO) cityList.get(0);
		cityVO1.setStatus(false);

		this.citySevice.saveCity(cityVO1);
		return new ModelAndView("redirect:viewCity");
	}
	
	@GetMapping("admin/editCity")
	public ModelAndView editCity(@ModelAttribute CityVO cityVO,@RequestParam int id) 
	{
		cityVO.setId(id);
		List<?> CityList = this.citySevice.getCityById(cityVO);
		
		CityVO cityvo1 = (CityVO) CityList.get(0);
		return new ModelAndView("admin/addCity","cityVO",cityvo1);	
	}
	
	
	
}
