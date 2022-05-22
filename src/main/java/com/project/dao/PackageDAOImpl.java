package com.project.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.PackageVO;

@Repository
public class PackageDAOImpl implements PackageDAO
{

	@Autowired SessionFactory sessionFactory;

	
	public void savePackage(PackageVO packageVO) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(packageVO);

	}

	
	public List<?> getPackage() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from PackageVO where status=true");
		List<?> ls = q.list();
		return ls;
		
		
	}

	public List<?> getPackageById(PackageVO packageVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();	
		Query query = session.createQuery("from PackageVO where status = true and id = " + packageVO.getId());
		List<?> packageList = query.list();
		return packageList;
		
	}

	
		
}

