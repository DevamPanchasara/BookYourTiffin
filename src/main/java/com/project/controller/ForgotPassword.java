package com.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.OTPVerificationTable;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
public class ForgotPassword {

	@Autowired
	private LoginService loginServices;

	@RequestMapping(value = "forgotPassword", method = RequestMethod.GET)
	public ModelAndView forgotPassword() {
		return new ModelAndView("forgotPassword");
	}

	@RequestMapping(value = "verifyEmail", method = RequestMethod.GET)
	public ResponseEntity verifyEmail(@RequestParam String email) {
		List ls = this.loginServices.searchLoginID(email);
		boolean status = false;
		if (ls.size() > 0) {
			status = true;
		}
		return new ResponseEntity(status, HttpStatus.OK);
	}

	@GetMapping("sendOTP")
	public ResponseEntity sendOTP(@RequestParam String email) {

		char[] otp = Basemethods.generateOTP();
		String token = Basemethods.generatePassword();

		OTPVerificationTable otpVerificationTable = new OTPVerificationTable();
		otpVerificationTable.setEmail(email);
		otpVerificationTable.setOtp(otp);
		otpVerificationTable.setToken(token);

		this.loginServices.save(otpVerificationTable);

		Basemethods.sendMail(email, otp);
		Map map = new HashMap();
		map.put("email", email);
		map.put("token", token);
		return new ResponseEntity(map,HttpStatus.OK);
	}

	@GetMapping("verifyOTP")
	public ResponseEntity verifyOTP(@RequestParam String email, @RequestParam String otp, @RequestParam String token) {

		List<OTPVerificationTable> ls = this.loginServices.verifyOTP(email, otp, token);
		Map map = new HashMap();
		map.put("email", email);
		map.put("token", token);
		if (ls.size() > 0) {
			OTPVerificationTable otpVerificationTable = ls.get(0);
			this.loginServices.delete(otpVerificationTable);
			map.put("status", true);
			return new ResponseEntity(map,HttpStatus.OK);
		} else {
			map.put("status", false);
			return new ResponseEntity(map,HttpStatus.OK);
		}
	}

	@PostMapping("updatePassword")
	public ModelAndView updatePassword(@RequestParam String email, @RequestParam String newPassword) {

		List<?> ls = this.loginServices.searchLoginID(email);
		LoginVO loginVO = (LoginVO) ls.get(0);

		loginVO.setPassword(newPassword);
		loginServices.saveLogin(loginVO);

		return new ModelAndView("login");
	}

}
