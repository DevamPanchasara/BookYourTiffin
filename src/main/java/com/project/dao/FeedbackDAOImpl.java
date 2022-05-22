package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.model.VendorRatingVO;
import com.project.model.VendorVO;

@Repository
@Transactional
public class FeedbackDAOImpl implements FeedbackDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void saveFeedback(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
	}

	public List<?> getFeedback() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVO where status=true");
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getFeedbackById(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVO where status=true and id=" + loginVO.getLoginId());
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getUserFeedback(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session
				.createQuery("from FeedbackVO where status=true and login_id=" + feedbackVO.getLoginVO().getLoginId());
		List<?> ls = q.list();
		return ls;
	}

	public void saveVendorRating(VendorRatingVO vendorRatingVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(vendorRatingVO);
	}

	public List<?> getVendorRatingByID(VendorRatingVO vendorratingVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery(
				"from VendorRatingVO where status=true and vendorVO =" + vendorratingVO.getVendorVO().getId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getFeedbackbyType(String string) {
		String role = "";

		if (string.equals("vendor")) {
			role = "ROLE_VENDOR";
		} else if (string.equals("user")) {
			role = "ROLE_CUSTOMER";
		}
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVO where status=true and loginVO.role = '" + role + "' ");
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getVendorAvgFeedbackByID(VendorVO vendor1) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery(
				"select avg(feedback_rating) from vendor_rating_table where status=true and vendor_id =" + vendor1.getId());
		List<?> ls = q.list();
		return ls;
	}
	
	@Override
	public List<?> getVendorAvgFeedback() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createSQLQuery(
				"select avg(feedback_rating),vendor_id from vendor_rating_table where status=true group by vendor_id");
		List<?> ls = q.list();
		return ls;
	}
}
