package com.project.service;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.UserVO;

public interface UserService {

	public void saveUser(UserVO userVO);

	public List<?> getUser();

	public List<?> getBlockedUser();

	public List<UserVO> getuserById(UserVO userVO);

	public List<UserVO> getblockuserById(UserVO userVO);

	public void deleteUser(UserVO userVO1);

	public List<?> getUserDetailsById(LoginVO loginVO1);
}

