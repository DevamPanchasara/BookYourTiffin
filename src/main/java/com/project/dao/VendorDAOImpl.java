package com.project.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.VendorVO;

@Repository
public class VendorDAOImpl implements VendorDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void saveVendor(VendorVO vendorVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(vendorVO);
	}

	public List<?> getVendor() {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where status=true and flag=true");
		List<?> ls = q.list();
		return ls;
	}

	public List<VendorVO> getVendorById(VendorVO vendorVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where status=true and id=" + vendorVO.getId());
		List<VendorVO> ls = q.list();
		return ls;
	}

	public List<?> getBlockedVendor() {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where status=false");
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getBlockedVendorById(VendorVO vendorVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where status=false and id=" + vendorVO.getId());
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getRequestedVendor() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where flag=false");
		List<?> ls = q.list();
		return ls;

	}

	public void rejectedVendor(VendorVO vendorVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(vendorVO);
	}

	@Override
	public List<?> getVendorByLoginId(LoginVO loginvo1) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from VendorVO where loginvo=" + loginvo1.getLoginId());
		List<?> ls = q.list();
		return ls;
	}

}
