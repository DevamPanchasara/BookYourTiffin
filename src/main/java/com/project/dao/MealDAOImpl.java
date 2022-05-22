package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.MealVO;

@Repository
public class MealDAOImpl implements MealDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void saveMeal(MealVO mealVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(mealVO);
	}

	public List<?> getMeal() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from MealVO where status = true");
		List<?> mealList = q.list();
		return mealList;
	}

	public List<?> getMealById(MealVO mealVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from MealVO where status = true and id = " + mealVO.getId());
		List<?> mealList = query.list();
		return mealList;
	}

	@Override
	public List<?> getTiffinByType(MealVO mealvo) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from MealVO where status = true and mealType='" + mealvo.getMealType() + "'");
		List<?> mealList = query.list();
		return mealList;
	}

	@Override
	public List<?> getMealByVendor(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from TiffinMenuVO where status = true and loginVO = " + id + " group by mealVO");
		List<?> mealList = query.list();
		return mealList;
	}
}
