package com.project.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.project.model.LoginVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;
import com.project.service.ComplainsService;
import com.project.service.DishService;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.service.OrderService;
import com.project.service.UserService;
import com.project.service.VendorService;
import com.project.utils.Basemethods;

@Controller
public class LoginController {

	@Autowired
	private Basemethods baseMethods;

	@Autowired
	private UserService userService;
	
	@Autowired
	private LoginService loginService;

	@Autowired
	private VendorService vendorService;

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private DishService dishService;
	
	@Autowired
	private ComplainsService complainsSevice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex(ModelMap map) {
		
		map.addAttribute("totalVendor", 0);
		map.addAttribute("totalCustomer", 0);
		map.addAttribute("totalComplain", 0);
		map.addAttribute("totalFeedback", 0);
		
		List<?> vendorList = this.vendorService.getVendor();
		List<?> customerList = this.userService.getUser();
		List<?> complainList = this.complainsSevice.getAllComplains();
		List<?> feedbackList = this.feedbackService.getFeedback();
		
		Date d = new Date();
		List graphData = this.orderService.getOrderCountByMonth(d.getMonth()+1);
		System.out.println(new Gson().toJson(graphData));
		
		
		map.addAttribute("totalCustomer", customerList.size());
		map.addAttribute("totalVendor", vendorList.size());
		map.addAttribute("totalComplain", complainList.size());
		map.addAttribute("totalFeedback", feedbackList.size());
		map.addAttribute("graphData", graphData);
		return new ModelAndView("admin/index");
	}

	@RequestMapping(value = "/vendor/index", method = RequestMethod.GET)
	public ModelAndView vendorIndex(ModelMap map, VendorRatingVO vendorRatingVO) {

		map.addAttribute("totalItems", 0);
		map.addAttribute("totalOrder", 0);
		map.addAttribute("totalRating", 0);
		map.addAttribute("averageRating", 0);

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginvo1 = (LoginVO) ls.get(0);
		VendorVO vendorvo = new VendorVO();

		List<?> vendorList = this.vendorService.getVendorByLoginId(loginvo1);
		VendorVO vendorvo1 = (VendorVO) vendorList.get(0);

		vendorRatingVO.setVendorVO(vendorvo1);

		List<?> vendorAvgRatingList = this.feedbackService.getVendorAvgFeedbackByID(vendorvo1);
		List<?> vendorRatingList = this.feedbackService.getVendorRatingByID(vendorRatingVO);

		List<?> orderList = this.orderService.getOrder(loginvo1);
		List<?> dishList = this.dishService.getDishesByID(loginvo1);

		System.out.println(dishList);

		if (vendorAvgRatingList != null && !vendorAvgRatingList.isEmpty()) {
			Double avgRate = (Double) vendorAvgRatingList.get(0);
			map.addAttribute("averageRating", avgRate);
		}

		if (dishList != null && !dishList.isEmpty() && dishList.get(0) != null) {
			map.addAttribute("totalItems", dishList.get(0));
		}

		map.addAttribute("totalRating", vendorRatingList.size());
		map.addAttribute("totalOrder", orderList.size());

		List graphData = this.orderService.getOrderCountByVendorId(vendorvo1);


		System.out.println(new Gson().toJson(graphData));

		map.addAttribute("graphData", graphData);
		return new ModelAndView("vendor/index");
	}

	@RequestMapping(value = "/customer/index", method = RequestMethod.GET)
	public ModelAndView customerIndex() {
		return new ModelAndView("user/index");
	}

	@RequestMapping(value = "/logout", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUserDetails(ModelMap model, HttpServletResponse response, HttpServletRequest request) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
			request.getSession().invalidate();
			request.getSession().setAttribute("tempStatus", "success");
			request.getSession().setAttribute("statusText", "Logout Successfully!");
		}
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}

	@GetMapping("/changePassword")
	public ModelAndView changePassword() {
		return new ModelAndView("changePassword");
	}

	@GetMapping("/forgotmyPassword")
	public ModelAndView forgotPassword() {
		return new ModelAndView("forgotPassword");
	}

	@GetMapping("/updatePassword")
	public ModelAndView forgotPsw() {
		return new ModelAndView("updatePassword");
	}
}