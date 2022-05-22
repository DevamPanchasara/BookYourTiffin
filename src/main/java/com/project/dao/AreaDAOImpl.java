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
public class AreaDAOImpl implements AreaDAO {
	@Autowired
	SessionFactory sessionFactory;

	public List<?> getAreaByCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from AreaVO where cityvo=" + cityVO.getId());
		List<?> ls = q.list();
		return ls;
	}

	public void saveArea(AreaVO areaVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(areaVO);
	}

	public List<?> getArea() {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from AreaVO where status=true");
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getAreaById(AreaVO areaVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from AreaVO where status=true and id=" + areaVO.getId());
		List<?> ls = q.list();
		return ls;
	}
}
