package com.project.service;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.OTPVerificationTable;

public interface LoginService {

	void saveLogin(LoginVO loginvo);

	void rejectLogin(LoginVO loginVO);

	List searchLoginID(String email);

	void delete(OTPVerificationTable otpVerificationTable);

	List<OTPVerificationTable> verifyOTP(String email, String otp, String token);

	void save(OTPVerificationTable otpVerificationTable);

	List<?> searchLoginID(LoginVO loginVO);

}
