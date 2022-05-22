package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.DishVO;
import com.project.model.LoginVO;
import com.project.model.MealVO;
import com.project.model.TiffinMenuVO;
import com.project.model.VendorVO;

@Repository
public class DishDAOImpl implements DishDAO {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void saveDish(DishVO dishVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(dishVO);
	}

	public List<?> getDish(TiffinMenuVO tiffinMenuVO1) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from DishVO where status=true and id=" + tiffinMenuVO1.getId());
		List<?> ls = q.list();
		return ls;

	}

	@Override
	public List<?> getTiffinDishByTiffinId(int id) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from DishVO where status=true and tiffinMenuVO=" + id);
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getTiffinByDay(String day) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from TiffinMenuVO where status=true and day='" + day + "'");
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getTiffinMenuByMealType(MealVO mealVO1, VendorVO vendorVO1, String str) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from TiffinMenuVO where status=true and day='" + str + "' and mealVO ="
				+ mealVO1.getId() + " and loginVO =" + vendorVO1.getLoginvo().getLoginId());
		List<?> ls = q.list();
		return ls;
	}

	@Override
	public List<?> getDishesByID(LoginVO loginvo1) {
		Session session = sessionFactory.openSession();
		Query q = session.createSQLQuery(
				"SELECT COUNT(*) FROM dish_table WHERE tiffin_menu_id IN(SELECT id FROM tiffinmenu_table WHERE login_id = "
						+ loginvo1.getLoginId() + ")");
		List<?> ls = q.list();
		return ls;
	}
}
