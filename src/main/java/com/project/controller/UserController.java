package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.project.model.LoginVO;
import com.project.model.UserVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.service.MealService;
import com.project.service.TiffinMenuService;
import com.project.service.UserService;
import com.project.service.VendorService;
import com.project.utils.Basemethods;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private VendorService vendorService;

	@Autowired
	private MealService mealService;

	@Autowired
	private TiffinMenuService menuService;

	@GetMapping("user/index")
	public ModelAndView userIndex() {
		return new ModelAndView("user/index");
	}

	@GetMapping("/userRegister")
	public ModelAndView userRegister() {

		return new ModelAndView("UserRegister", "userVO", new UserVO());
	}

	@PostMapping("/saveUser")
	public ModelAndView saveUser(@ModelAttribute UserVO userVO) {

		LoginVO loginVO = userVO.getLoginvo();
		loginVO.setEnabled(1);
		loginVO.setRole("ROLE_CUSTOMER");
		this.loginService.saveLogin(loginVO);

		this.userService.saveUser(userVO);
		// return new ModelAndView("UserRegister","userVO",new UserVO());
		return new ModelAndView("redirect:login");
	}

	@GetMapping("user/aboutUs")
	public ModelAndView aboutUs() {
		return new ModelAndView("user/aboutUs");
	}

	@GetMapping("/viewUserMenu")
	public ModelAndView addUserMenu() {
		return new ModelAndView("user/viewUserMenu");
	}

	@GetMapping("user/viewVendor")
	public ModelAndView viewVendor() {
		List<?> vendorList = this.vendorService.getVendor();
		List<?> mealList = this.mealService.getMeal();
		List<?> ratingList = this.feedbackService.getVendorAvgFeedback();
		List<?> mealList1 = this.menuService.getTiffinMenuVendorWise();

		System.out.println(new Gson().toJson(ratingList));
		
		return new ModelAndView("user/viewVendor", "vendorList", vendorList).addObject("mealList", mealList).addObject("mealList1", mealList1);
	}

	@GetMapping("admin/viewUser")
	public ModelAndView viewUser() {
		List<?> userList = this.userService.getUser();
		return new ModelAndView("admin/viewUser", "userList", userList);
	}

	@GetMapping("admin/viewRejectedUser")
	public ModelAndView viewRejectedUser() {
		List<?> userblockList = this.userService.getBlockedUser();
		return new ModelAndView("admin/viewRejectedUser", "userList", userblockList);
	}

	@GetMapping("admin/blockUser")
	public ModelAndView blockUser(@ModelAttribute UserVO userVO, @RequestParam int id) {
		userVO.setId(id);
		List<UserVO> userList = this.userService.getuserById(userVO);

		UserVO userVO1 = userList.get(0);
		userVO1.setStatus(false);
		LoginVO loginVO = userVO1.getLoginvo();
		loginVO.setEnabled(0);

		this.loginService.saveLogin(loginVO);
		this.userService.saveUser(userVO1);
		return new ModelAndView("redirect:viewUser");
	}

	@GetMapping("admin/unblockUser")
	public ModelAndView unblockUser(@ModelAttribute UserVO userVO, @RequestParam int id) {
		userVO.setId(id);
		List<UserVO> userList = this.userService.getblockuserById(userVO);

		UserVO userVO1 = userList.get(0);
		userVO1.setStatus(true);
		LoginVO loginVO = userVO1.getLoginvo();
		loginVO.setEnabled(1);

		this.loginService.saveLogin(loginVO);
		this.userService.saveUser(userVO1);

		return new ModelAndView("redirect:viewRejectedUser");
	}

	@GetMapping("user/viewVendorDetails")
	public ModelAndView blockVendor(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<VendorVO> vendorDetails = this.vendorService.getVendorById(vendorVO);
		VendorVO vendor1 = vendorDetails.get(0);
		VendorRatingVO vendorratingVO = new VendorRatingVO();
		vendorratingVO.setVendorVO(vendor1);

		List<?> vendorAvgRatingList = this.feedbackService.getVendorAvgFeedbackByID(vendor1);
		List<?> vendorRatingList = this.feedbackService.getVendorRatingByID(vendorratingVO);
		List<?> mealList = this.mealService.getMeal();
		List<?> meal = this.mealService.getMealByVendor(vendor1.getLoginvo().getLoginId());

		Double avgRate = 0.0d;

		if (vendorAvgRatingList != null && !vendorAvgRatingList.isEmpty()) {
			Double queryResult = avgRate = (Double) vendorAvgRatingList.get(0);
			avgRate = queryResult != null && queryResult > 0 ? (queryResult * 100) / 5 : 0;
		}

		return new ModelAndView("user/viewVendorDetails", "vendorDetails", vendorDetails)
				.addObject("vendorRatingList", vendorRatingList).addObject("mealList", mealList)
				.addObject("vendorAvgRatingList", avgRate)
				.addObject("meal", meal);
	}

	@GetMapping("user/vendorRating")
	public ModelAndView vendorRating(@ModelAttribute VendorVO vendorVO, @RequestParam int id) {
		vendorVO.setId(id);
		List<VendorVO> vendorList = this.vendorService.getVendorById(vendorVO);

		return new ModelAndView("user/vendorRating", "vendorRatingVO", new VendorRatingVO()).addObject("vendorList",
				vendorList);
	}

	@PostMapping("user/saveVendorRating")
	public ModelAndView saveVendorRating(@ModelAttribute VendorRatingVO vendorRatingVO, @RequestParam String rating,
			@RequestParam int vendorid) {
		VendorVO vendorVO = new VendorVO();
		vendorVO.setId(vendorid);
		List<?> vendorlist = this.vendorService.getVendorById(vendorVO);
		VendorVO vendorvo1 = (VendorVO) vendorlist.get(0);

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		vendorRatingVO.setLoginVO(loginVO1);
		vendorRatingVO.setVendorVO(vendorvo1);
		vendorRatingVO.setVendorRating(rating);
		vendorRatingVO.setStatus(true);

		this.feedbackService.saveVendorRating(vendorRatingVO);
		return new ModelAndView("redirect:/user/viewVendor");
	}

	@GetMapping("admin/deleteUser")
	public ModelAndView deleteUser(@ModelAttribute UserVO userVO, @RequestParam int id) {
		userVO.setId(id);
		List<UserVO> userList = this.userService.getblockuserById(userVO);
		UserVO userVO1 = userList.get(0);
		LoginVO loginVO = userVO1.getLoginvo();

		this.userService.deleteUser(userVO1);
		this.loginService.rejectLogin(loginVO);

		return new ModelAndView("redirect:viewRejectedUser");
	}
	
	@GetMapping("user/myAccount")
	public ModelAndView myAccount() {
		
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);

		List<?> userDetails = this.userService.getUserDetailsById(loginVO1);
		UserVO uservo = (UserVO) userDetails.get(0);
		System.out.println(userDetails.size());
		
		return new ModelAndView("user/myAccount", "userVO", uservo );
	}
	
	@PostMapping("user/saveUser")
	public ModelAndView editUser(@ModelAttribute UserVO userVO) {

		LoginVO loginVO = userVO.getLoginvo();
		loginVO.setEnabled(1);
		loginVO.setRole("ROLE_CUSTOMER");
		this.loginService.saveLogin(loginVO);

		this.userService.saveUser(userVO);
		// return new ModelAndView("UserRegister","userVO",new UserVO());
		return new ModelAndView("redirect:/customer/index");
	}

}
