package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PackageVO;
import com.project.service.PackageService;

@Controller
public class PackageController {

	@Autowired 
	private PackageService packageService;
	
	@GetMapping("admin/addPackage")
	public ModelAndView addPackage() {
		return new ModelAndView("admin/addPackage","packageVO",new PackageVO());
	}
	
	@GetMapping("admin/SavePackage")
	public ModelAndView savePackage(@ModelAttribute PackageVO packageVO) 
	{
		this.packageService.savePackage(packageVO);
		return new ModelAndView("admin/addPackage","packageVO",new PackageVO());
	}
	
	@GetMapping("admin/viewPackage")
	public ModelAndView viewPackage() {
		List<?> packageList = this.packageService.getPackage();
		return new ModelAndView("admin/viewPackage","packageList",packageList);
	}
	
	@GetMapping("vendor/viewPackage")
	public ModelAndView viewPackagevendor() {
		List<?> packageList = this.packageService.getPackage();
		return new ModelAndView("vendor/viewPackage","packageList",packageList);
	}
	
	@GetMapping("admin/deletePackage")
	public ModelAndView deletePackage(@ModelAttribute  PackageVO packageVO , @RequestParam int id) {
		packageVO.setId(id);
		List<?> packageList = this.packageService.getPackageById(packageVO);

		PackageVO packageVO2 = (PackageVO) packageList.get(0);
		packageVO2.setStatus(false);
		this.packageService.savePackage(packageVO2);
		return new ModelAndView("redirect:viewPackage");
	}
	
	@GetMapping("admin/editPackage")
	public ModelAndView editPackage(@ModelAttribute  PackageVO packageVO , @RequestParam int id ) {
		packageVO.setId(id);
		List<?> packageList = this.packageService.getPackageById(packageVO);
		
		PackageVO packageVO1 = (PackageVO) packageList.get(0);
		return new ModelAndView("admin/addPackage", "packageVO",packageVO1);
	}
	
	@GetMapping("vendor/selectPackage")
	public ModelAndView selectPackage() {
		
		List<?> packageList = this.packageService.getPackage();
		return new ModelAndView("vendor/selectPackage","packageList",packageList);
	}
	 
}
