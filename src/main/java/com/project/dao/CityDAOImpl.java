package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;
import com.project.model.CityVO;

@Repository
public class CityDAOImpl implements CityDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void saveCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(cityVO);
	}

	public List<?> getCity() {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from CityVO where status=true");
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getCityById(CityVO cityvo) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from CityVO where status=true and id=" + cityvo.getId());
		List<?> ls = q.list();
		return ls;
	}

}
