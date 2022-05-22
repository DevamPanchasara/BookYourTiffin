package com.project.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;

@Repository
@Transactional
public class ComplainsDAOImpl implements ComplainsDAO 
{
	@Autowired SessionFactory sessionFactory;
	
	public void saveComplain(ComplainVO complainVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
	}


	public List<?> getComplains(ComplainVO complainVO) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVO where status=true and login_id=" +complainVO.getLoginVO().getLoginId());
		List<?> ls = q.list();
		return ls;
	}


	public List<?> complainGetById(ComplainVO complainVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVO where status=true and id="+complainVO.getId());
		List<?> ls = q.list();
		return ls;
	}


	public List<?> getAllComplains() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVO where status=true");
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getUserComplainsId() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVO where loginVO.role='ROLE_CUSTOMER'");
		List<?> userComplainId = q.list();
		return userComplainId;
	}

}
