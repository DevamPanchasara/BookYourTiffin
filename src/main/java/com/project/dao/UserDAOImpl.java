package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.UserVO;
import com.project.model.VendorVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired SessionFactory sessionFactory;
	
	public void saveUser(UserVO userVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(userVO);
	}

	public List<?> getUser() {
		Session session = sessionFactory.openSession();
		Query q= session.createQuery("from UserVO where status=true");
		List<?> userList = q.list();
		return userList;
	}

	@Override
	public List<?> getBlockedVendor() {
		Session session = sessionFactory.openSession();
		Query q= session.createQuery("from UserVO where status=false");
		List<?> userList = q.list();
		return userList;
	}

	@Override
	public List<UserVO> getUserById(UserVO userVO) {
		Session session = sessionFactory.openSession();
		Query q= session.createQuery("from UserVO where status=true and id="+userVO.getId());
		List<UserVO> ls = q.list();
		return ls;
	}

	@Override
	public List<UserVO> getBlockUserById(UserVO userVO) {
		Session session = sessionFactory.openSession();
		Query q= session.createQuery("from UserVO where status=false and id="+userVO.getId());
		List<UserVO> ls = q.list();
		return ls;
	}

	@Override
	public void deleteUser(UserVO userVO1) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(userVO1);
	}
	
	@Override
	public List<UserVO> getUserDetailsById(LoginVO loginVO1) {
		Session session = sessionFactory.openSession();
		Query q= session.createQuery("from UserVO where status=true and loginvo="+loginVO1.getLoginId());
		List<UserVO> ls = q.list();
		return ls;
	}
	
}
