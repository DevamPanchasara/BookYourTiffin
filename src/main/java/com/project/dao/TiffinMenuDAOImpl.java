package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.project.model.TiffinMenuVO;

@Repository
public class TiffinMenuDAOImpl implements TiffinMenuDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void saveTiffinMenu(TiffinMenuVO tiffinMenuVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(tiffinMenuVO);
	}

	public List<?> getTiffinMenu(int loginId) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from TiffinMenuVO where status=true and loginVO = " + loginId);
		List<?> ls = q.list();
		return ls;
	}

	public List<?> getTiffinMenuById(TiffinMenuVO tiffinMenuVO) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from TiffinMenuVO where status=true and id=" + tiffinMenuVO.getId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getTiffinMenuByDayAndLoginId(int loginId, String day) {
		Session session = sessionFactory.openSession();
		Query q = session
				.createQuery("from TiffinMenuVO where status=true and day = '" + day + "' and loginVO = " + loginId);
		List<?> ls = q.list();
		return ls;
	}
	
	@Override
	public List<?> getTiffinMenuVendorWise() {
		Session session = sessionFactory.openSession();
		Query q = session
				.createSQLQuery("SELECT DISTINCT meal_id,meal_type,login_id FROM tiffinmenu_table INNER JOIN meal_table ON tiffinmenu_table.`meal_id` = meal_table.id WHERE tiffinmenu_table.status = TRUE");
		List<?> ls = q.list();
		
		System.out.println(new Gson().toJson(ls));
		return ls;
	}
	
	

}
