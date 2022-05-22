package com.project.service;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.model.LoginVO;
import com.project.model.UserVO;


@Service
@Transactional
public class UserServiceImpl implements UserService{

@Autowired UserDAO userDAO;
	
	
	public void saveUser(UserVO userVO) {
		
		this.userDAO.saveUser(userVO);
	}


	@Transactional
	public List<?> getUser() {
		List<?> userList=this.userDAO.getUser();
		return userList;
	}


	@Transactional
	public List<?> getBlockedUser() {
		List<?> userList=this.userDAO.getBlockedVendor();
		return userList;
	}


	@Transactional
	public List<UserVO> getuserById(UserVO userVO) {
		List<UserVO> userList=this.userDAO.getUserById(userVO);
		return userList;
		}


	@Override
	public List<UserVO> getblockuserById(UserVO userVO) {
		List<UserVO> userList=this.userDAO.getBlockUserById(userVO);
		return userList;
	}


	@Override
	public void deleteUser(UserVO userVO1) {
		
		this.userDAO.deleteUser(userVO1);
	}
	
	@Override
	public List<?> getUserDetailsById(LoginVO loginVO1) {
		List<UserVO> userList=this.userDAO.getUserDetailsById(loginVO1);
		return userList;
	}

	
	
}
