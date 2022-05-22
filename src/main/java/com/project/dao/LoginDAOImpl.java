package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.OTPVerificationTable;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void saveLogin(LoginVO loginvo) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginvo);
	}

	public void rejectLogin(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(loginVO);
	}

	@Override
	public List<?> searchLoginID(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username='" + loginVO.getUsername() + "'");
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> searchLoginID(String userName) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username='" + userName + "'");
		List ls = q.list();
		return ls;
	}

	@Override
	public void save(OTPVerificationTable otpVerificationTable) {
		try {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.saveOrUpdate(otpVerificationTable);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<OTPVerificationTable> verifyOTP(String email, String otp, String token) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from OTPVerificationTable where email='" + email + "' and token = '" + token
				+ "' and otp = '" + otp + "' ");
		List ls = q.list();
		System.out.println(ls.size());
		return ls;
	}

	@Override
	public void delete(OTPVerificationTable otpVerificationTable) {
		try {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			session.delete(otpVerificationTable);
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
