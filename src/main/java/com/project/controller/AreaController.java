package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.service.AreaService;
import com.project.service.CityService;

@Controller
public class AreaController 
{
	@Autowired 
	private CityService cityService;
	
	@Autowired 
	private AreaService areaService;
	
	@GetMapping("admin/addArea")
	public ModelAndView addArea() 
	{
		List<?> cityList = this.cityService.getCity();
		return new ModelAndView("admin/addArea","CityList",cityList).addObject("AreaVO", new AreaVO());	
	}
	
	@GetMapping("admin/saveArea")
	public ModelAndView saveArea(@ModelAttribute AreaVO AreaVO) 
	{
		this.areaService.saveArea(AreaVO);
		return new ModelAndView("redirect:viewArea");
	}
	
	@GetMapping("admin/viewArea")
	public ModelAndView viewArea() 
	{	
		List<?> areaList = this.areaService.getArea();
		return new ModelAndView("admin/viewArea","areaList", areaList);
	}
	
	@GetMapping("admin/deleteArea")
	public ModelAndView deleteArea(@ModelAttribute AreaVO areaVO,@RequestParam int id) 
	{
		areaVO.setId(id);
		List<?> areaList = this.areaService.getAreaById(areaVO);
		
		AreaVO areaVO1 = (AreaVO) areaList.get(0);
		areaVO1.setStatus(false);

		this.areaService.saveArea(areaVO1);
		return new ModelAndView("redirect:viewArea");
	}
	
	@GetMapping("admin/editArea")
	public ModelAndView editArea(@ModelAttribute AreaVO areavo,@RequestParam int id) 
	{
		areavo.setId(id);
		List<?> ls = this.areaService.getAreaById(areavo);
		AreaVO areavo1 = (AreaVO) ls.get(0);
		
		List<?> list = this.cityService.getCity();
		return new ModelAndView("admin/addArea","CityList",list).addObject("AreaVO",areavo1);	
		
	}

}
