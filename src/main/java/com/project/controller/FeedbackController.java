package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
public class FeedbackController {
	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private LoginService loginService;

	@GetMapping("admin/viewFeedback")
	public ModelAndView viewFeedback() {
		List<?> feedbackList = this.feedbackService.getFeedback();
		return new ModelAndView("admin/viewFeedback", "feedbackList", feedbackList);
	}

	@GetMapping("vendor/addFeedback")
	public ModelAndView addVendorFeedback() {
		List<?> feedbackList = this.feedbackService.getFeedbackbyType("vendor");
		return new ModelAndView("vendor/addFeedback", "feedbackVO", new FeedbackVO()).addObject("feedbackList", feedbackList);
	}
	
	@GetMapping("user/addUserFeedback")
	public ModelAndView addUserFeedback(@ModelAttribute FeedbackVO feedbackVO) 
	{
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		feedbackVO.setLoginVO(loginVO1);
		
		List<?> feedbackList = this.feedbackService.getFeedbackbyType("user");
		return new ModelAndView("user/addFeedback", "feedbackVO", new FeedbackVO()).addObject("feedbackuserList",
				feedbackList);
	}
	

	@PostMapping("vendor/saveFeedback")
	public ModelAndView saveFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam String rating) {
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		feedbackVO.setLoginVO(loginVO1);
		feedbackVO.setFeedbackRating(rating);
		feedbackVO.setStatus(true);

		this.feedbackService.saveFeedback(feedbackVO);
		return new ModelAndView("redirect:/vendor/addFeedback");
	}

	@GetMapping("admin/deleteFeedback")
	public ModelAndView deleteFeedback(@RequestParam int id) 
	{
		LoginVO loginVO = new LoginVO();
		loginVO.setLoginId(id);
		List<?> ls = this.feedbackService.getFeedbackById(loginVO);
		FeedbackVO feedbackVO = (FeedbackVO) ls.get(0);
		feedbackVO.setStatus(false);
		this.feedbackService.saveFeedback(feedbackVO);
		return new ModelAndView("redirect:viewFeedback");
	}

	
	@PostMapping("user/saveUserFeedback")
	public ModelAndView saveUserFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam String rating) {
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		feedbackVO.setLoginVO(loginVO1);
		feedbackVO.setFeedbackRating(rating);

		this.feedbackService.saveFeedback(feedbackVO);
		/*List<?> feedbackList = this.feedbackService.getFeedback();
		System.out.print(feedbackList.size());*/
		/*return new ModelAndView("user/addFeedback", "feedbackVO", new FeedbackVO()).addObject("feedbackuserList",
				feedbackList);*/
		return new ModelAndView("redirect:addUserFeedback");
	}

}
