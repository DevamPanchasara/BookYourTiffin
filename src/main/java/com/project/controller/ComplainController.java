package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainsService;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
public class ComplainController {
	@Autowired
	private ComplainsService complainsSevice;

	@Autowired
	private LoginService loginService;

	@GetMapping("vendor/viewUserComplains")
	public ModelAndView viewUserComplains() {
		List<?> userComplainId = this.complainsSevice.getUserComplainsId();
		return new ModelAndView("vendor/viewUserComplains", "userComplainList", userComplainId);
	}

	@GetMapping("vendor/viewComplains")
	public ModelAndView viewComplains() {
		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		System.out.println(loginVO1.getLoginId());
		List<?> complainList = this.complainsSevice.getComplains(complainVO);
		return new ModelAndView("vendor/viewComplains", "complainList", complainList);
	}
	
	@GetMapping("vendor/addComplains")
	public ModelAndView addComplains() {

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		System.out.println(loginVO1.getLoginId());
		List<?> complainList = this.complainsSevice.getComplains(complainVO);
		return new ModelAndView("vendor/addComplains", "complainVO", new ComplainVO()).addObject("complainList",
				complainList);
	}
	
	@GetMapping("user/addComplain")
	public ModelAndView addUserComplains() {

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		ComplainVO complainVO = new ComplainVO();
		complainVO.setLoginVO(loginVO1);
		
		List<?> complainList = this.complainsSevice.getComplains(complainVO);
		return new ModelAndView("user/addComplain", "complainVO", new ComplainVO()).addObject("complainList",
				complainList);
	}



	@PostMapping("vendor/saveComplains")
	public ModelAndView saveComplains(@ModelAttribute ComplainVO complainVO, @RequestParam("file") MultipartFile file, 
			HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "documents\\vendorComplain\\";

		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setComplainDateTime(strDate);

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		complainVO.setLoginVO(loginVO1);
		complainVO.setFileName(fileName);
		complainVO.setFilePath(filePath);

		this.complainsSevice.saveComplain(complainVO);
		return new ModelAndView("redirect:/vendor/addComplains");
	}
	
	
	
	@PostMapping("user/saveComplain")
	public ModelAndView saveUserComplains(@ModelAttribute ComplainVO complainVO,@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		String str = request.getSession().getServletContext().getRealPath("/");
		String filePath = str + "documents\\userComplain\\";

		try {

			byte br[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "\\" + fileName));
			bout.write(br);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setComplainDateTime(strDate);

		String userName = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(userName);
		List<?> ls = this.loginService.searchLoginID(loginVO);
		LoginVO loginVO1 = (LoginVO) ls.get(0);
		complainVO.setLoginVO(loginVO1);
		complainVO.setFileName(fileName);
		complainVO.setFilePath(filePath);

		this.complainsSevice.saveComplain(complainVO);
		return new ModelAndView("redirect:/user/addComplain");
	}

	@GetMapping("admin/deleteComplains")
	  public ModelAndView admindeleteComplains(@ModelAttribute ComplainVO complainVO) {
			List<?> complainList = this.complainsSevice.complainGetById(complainVO);
			ComplainVO complainVO1 = (ComplainVO) complainList.get(0);
			complainVO1.setStatus(false);
			this.complainsSevice.saveComplain(complainVO1);

			return new ModelAndView("redirect:viewAllComplains");
	  }
	


	@GetMapping("admin/viewAllComplains")
	public ModelAndView viewAllComplains() {
		
		List<?> complainList = this.complainsSevice.getAllComplains();
		return new ModelAndView("admin/viewComplains", "complainList", complainList);
	}

	@GetMapping("admin/replyComplains")
	public ModelAndView replyComplains(@RequestParam int id) {
		ComplainVO complainVO = new ComplainVO();
		complainVO.setId(id);
		List<?> ComplainList = this.complainsSevice.complainGetById(complainVO);
		return new ModelAndView("admin/replyComplains", "complainVO", (ComplainVO) ComplainList.get(0));
	}

	@PostMapping("admin/saveComplainsReplay")
	public ModelAndView saveComplainsReplay(@ModelAttribute ComplainVO complainVO) {
		Date d = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String strDate = formatter.format(d);
		complainVO.setReplayDateTime(strDate);
		complainVO.setComplainStatus("Resolved");

		this.complainsSevice.saveComplain(complainVO);
		return new ModelAndView("redirect:viewAllComplains");
	}

}
