package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.PackageDAO;
import com.project.model.PackageVO;

@Service
public class PackageServiceImpl implements PackageService
{
	
	@Autowired PackageDAO packageDAO;
	
	@Transactional
	public void savePackage(PackageVO packageVO)
	{
		this.packageDAO.savePackage(packageVO);
	}


	@Transactional
	public List<?> getPackage() {

		List<?> ls = this.packageDAO.getPackage();
		return ls;
	}


	@Transactional
	public List<?> getPackageById(PackageVO packageVO) {
		List<?> ls =  this.packageDAO.getPackageById(packageVO);
		return ls;
	}

}
