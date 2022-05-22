package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.OrderDetailsVO;
import com.project.model.OrderVO;
import com.project.model.VendorVO;

@Repository
public class OrderDAOImpl implements OrderDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void saveArea(OrderVO orderVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(orderVO);
	}

	@Override
	public void saveArea(OrderDetailsVO detailsVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(detailsVO);
	}

	@Override
	public List<?> getOrder(LoginVO loginVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from OrderVO where vendorvo.loginvo = " + loginVO.getLoginId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getUserOrder(LoginVO loginVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from OrderVO where loginvo = " + loginVO.getLoginId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getorderDetailsList(OrderVO orderVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from OrderVO where id = "+ orderVO.getId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> viewOrderDetailsByOrderId(int id) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from OrderDetailsVO where ordervo=" + id);
		List<?> ls = q.list();
		return ls;
	}
	
	
	@Override
	public List getOrderCountByVendorId(VendorVO vendorVO){
		
		String query = "SELECT COUNT(*) , orderMonth FROM order_table WHERE vendor_id = "+vendorVO.getId()+" GROUP BY orderMonth";
		Session session = sessionFactory.openSession();
		Query q = session.createSQLQuery(query);
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List getOrderCountByMonth(int i) {
		String query = "SELECT COUNT(*) AS total, vr.Full_name AS vendor FROM order_table AS ot "
				+ " INNER JOIN vendor_reg AS vr ON ot.vendor_id= vr.id"
				+ " WHERE ot.orderStatus ='ACCEPTED' AND orderMonth="+i+" GROUP BY ot.vendor_id";
		Session session = sessionFactory.openSession();
		Query q = session.createSQLQuery(query);
		List<?> ls = q.list();
		return ls;
	}

}
