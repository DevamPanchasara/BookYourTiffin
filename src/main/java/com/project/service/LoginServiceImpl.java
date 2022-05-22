package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.LoginDAO;
import com.project.model.LoginVO;
import com.project.model.OTPVerificationTable;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired
	public LoginDAO loginDAO;


	public void saveLogin(LoginVO loginvo) {
		this.loginDAO.saveLogin(loginvo);
	}

	public void rejectLogin(LoginVO loginVO) {
		this.loginDAO.rejectLogin(loginVO);
	}
	
	public List<?> searchLoginID(LoginVO loginVO) {
		return this.loginDAO.searchLoginID(loginVO);
	}

	@Override
	public List searchLoginID(String email) {
		return this.loginDAO.searchLoginID(email);
	}

	@Override
	public void delete(OTPVerificationTable otpVerificationTable) {
		 this.loginDAO.delete(otpVerificationTable);
		
	}

	@Override
	public List<OTPVerificationTable> verifyOTP(String email, String otp, String token) {
		return this.loginDAO.verifyOTP(email,otp,token);
	}

	@Override
	public void save(OTPVerificationTable otpVerificationTable) {
		 this.loginDAO.save(otpVerificationTable);
		
	}
}
