package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.DishVO;
import com.project.model.LoginVO;
import com.project.model.MealVO;
import com.project.model.TiffinMenuVO;
import com.project.model.VendorVO;
import com.project.service.DishService;
import com.project.service.LoginService;
import com.project.service.MealService;
import com.project.service.OrderService;
import com.project.service.TiffinMenuService;
import com.project.service.VendorService;
import com.project.utils.Basemethods;

@RestController
public class TiffinMenuController {

	@Autowired
	private TiffinMenuService tiffinMenuservice;

	@Autowired
	private MealService mealService;

	@Autowired
	private DishService dishService;

	@Autowired
	private Basemethods baseMethods;

	@Autowired
	private LoginService loginService;

	@Autowired
	private VendorService vendorService;
	
	@Autowired
	private OrderService orderService;

	@GetMapping("vendor/addTiffinMenu")
	public ModelAndView addTiffinMenu() {
		List<?> mealList = this.mealService.getMeal();
		return new ModelAndView("vendor/addTiffinMenu", "tiffinMenuVO", new TiffinMenuVO()).addObject("MealList",
				mealList);
	}

	@PostMapping("vendor/saveTiffinMenu")
	public ModelAndView saveTiffinMenu(@ModelAttribute TiffinMenuVO tiffinMenuVO, LoginVO loginVO,
			@RequestParam String[] dishName, @RequestParam MultipartFile[] dishFile, HttpServletRequest request) {

		String userName = baseMethods.getUser();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO lVO = (LoginVO) ls.get(0);

		if (tiffinMenuVO.getMealVO().getId() == 2) {
			tiffinMenuVO.setPrice("50");
		}
		if (tiffinMenuVO.getMealVO().getId() == 3) {
			tiffinMenuVO.setPrice("80");
		}
		if (tiffinMenuVO.getMealVO().getId() == 4) {
			tiffinMenuVO.setPrice("120");
		}
		if (tiffinMenuVO.getMealVO().getId() == 5) {
			tiffinMenuVO.setPrice("160");
		}

		tiffinMenuVO.setLoginVO(lVO);
		this.tiffinMenuservice.saveTiffinMenu(tiffinMenuVO);

		for (int i = 0; i < dishName.length; i++) {

			String fileName = dishFile[i].getOriginalFilename();
			String str = request.getSession().getServletContext().getRealPath("/");
			String filePath = str + "documents\\dishDetails\\";

			try {

				byte br[] = dishFile[i].getBytes();
				BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
				bout.write(br);
				bout.flush();
				bout.close();

			} catch (Exception e) {
				e.printStackTrace();
			}

			DishVO dishVO = new DishVO();
			dishVO.setDishName(dishName[i]);
			dishVO.setStatus(true);
			dishVO.setDishfileName(fileName);
			dishVO.setDishfilePath(filePath);
			dishVO.setTiffinMenuVO(tiffinMenuVO);
			this.dishService.saveDish(dishVO);
		}
		return new ModelAndView("redirect:addTiffinMenu");
	}

	@GetMapping("vendor/viewTiffinMenu")
	public ModelAndView viewTiffinMenu(LoginVO loginVO) {
		return new ModelAndView("vendor/viewTiffinMenu");
	}

	@GetMapping("vendor/deleteTiffinMenu")
	public ModelAndView deleteTiffinMenu(@ModelAttribute TiffinMenuVO tiffinMenuVO, @RequestParam int id) {
		tiffinMenuVO.setId(id);
		List<?> tiffinMenuList = this.tiffinMenuservice.getTiffinMenuById(tiffinMenuVO);

		TiffinMenuVO tiffinMenuVO1 = (TiffinMenuVO) tiffinMenuList.get(0);
		tiffinMenuVO1.setStatus(false);

		List<?> dishList = this.dishService.getDish(tiffinMenuVO1);
		for (int i = 0; i < dishList.size(); i++) {
			DishVO dishVO = new DishVO();
			dishVO = (DishVO) dishList.get(i);
			dishVO.setStatus(false);
			this.dishService.saveDish(dishVO);
		}

		this.tiffinMenuservice.saveTiffinMenu(tiffinMenuVO1);
		return new ModelAndView("redirect:viewTiffinMenu");
	}

	@GetMapping("vendor/editTiffinMenu")
	public ModelAndView editPackage(@ModelAttribute TiffinMenuVO tiffinMenuVO, @RequestParam int id) {
		tiffinMenuVO.setId(id);
		List<?> tiffinMenuList = this.tiffinMenuservice.getTiffinMenuById(tiffinMenuVO);

		TiffinMenuVO tiffinMenuVO1 = (TiffinMenuVO) tiffinMenuList.get(0);
		return new ModelAndView("vendor/addTiffinMenu", "tiffinMenuVO", tiffinMenuVO1);
	}

	@GetMapping("vendor/viewDishesOfTiffinMenu")
	public ResponseEntity viewDishesOfTiffinMenu(@RequestParam int id) {
		List<?> tiffindishList = this.dishService.getTiffinDishByTiffinId(id);
		return new ResponseEntity(tiffindishList, HttpStatus.OK);
	}

	@GetMapping("vendor/viewTiffinMenuByDay")
	public ResponseEntity viewTiffinMenuByDay(@RequestParam("day") String day, LoginVO loginVO) {

		String userName = baseMethods.getUser();
		loginVO.setUsername(userName);
		List ls = this.loginService.searchLoginID(loginVO);
		LoginVO lVO = (LoginVO) ls.get(0);

		List<?> tiffinList = this.tiffinMenuservice.getTiffinMenuByDayAndLoginId(lVO.getLoginId(), day);
		return new ResponseEntity(tiffinList, HttpStatus.OK);
	}

	@GetMapping("user/viewDaysMenu")
	public ModelAndView viewDaysMenu(@ModelAttribute MealVO mealVO, @RequestParam(required = false) String day,
			@ModelAttribute VendorVO vendorVO, @RequestParam int id, @RequestParam int vendorid) {

		if (day == null || day.isEmpty()) {
			day = "sunday";
		}

		mealVO.setId(id);
		List<?> mealList = this.mealService.getMealById(mealVO);
		MealVO mealVO1 = (MealVO) mealList.get(0);

		vendorVO.setId(vendorid);
		List<?> vendorList = this.vendorService.getVendorById(vendorVO);
		VendorVO vendorVO1 = (VendorVO) vendorList.get(0);

		List<?> tiffindishList = this.dishService.getTiffinMenuByMealType(mealVO1, vendorVO1, day);
		List<?> dishList = null;
		if (tiffindishList != null && !tiffindishList.isEmpty()) {
			TiffinMenuVO menuVO = (TiffinMenuVO) tiffindishList.get(0);

			int tiffinid = menuVO.getId();
			dishList = this.dishService.getTiffinDishByTiffinId(tiffinid);
		}
		return new ModelAndView("user/viewDaysMenu", "dishList", dishList).addObject("vendor", vendorVO1)
				.addObject("meal", mealVO1).addObject("tiffindishList", tiffindishList);
	}

	@GetMapping("user/viewDaysMenuClick")
	public ModelAndView viewDaysMenuClick(@ModelAttribute MealVO mealVO, @ModelAttribute VendorVO vendorVO,
			@RequestParam int id, @RequestParam int vendorid, @RequestParam String day) {
		mealVO.setId(id);
		List<?> mealList = this.mealService.getMealById(mealVO);
		MealVO mealVO1 = (MealVO) mealList.get(0);

		vendorVO.setId(vendorid);
		List<?> vendorList = this.vendorService.getVendorById(vendorVO);
		VendorVO vendorVO1 = (VendorVO) vendorList.get(0);

		List<?> tiffindishList = this.dishService.getTiffinMenuByMealType(mealVO1, vendorVO1, day);
		List<?> dishList = null;
		if (tiffindishList != null && !tiffindishList.isEmpty()) {
			TiffinMenuVO menuVO = (TiffinMenuVO) tiffindishList.get(0);

			int tiffinid = menuVO.getId();
			dishList = this.dishService.getTiffinDishByTiffinId(tiffinid);
		}
		return new ModelAndView("user/viewDaysMenu", "dishList", dishList).addObject("tiffindishList", tiffindishList);
	}
	
	

}