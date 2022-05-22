package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.UserVO;

public interface UserDAO {

	void saveUser(UserVO userVO);

	List<?> getUser();

	List<?> getBlockedVendor();

	List<UserVO> getUserById(UserVO userVO);

	List<UserVO> getBlockUserById(UserVO userVO);

	void deleteUser(UserVO userVO1);
	
	List<UserVO> getUserDetailsById(LoginVO loginVO1);
}
