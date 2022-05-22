package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.VendorDAO;
import com.project.model.LoginVO;
import com.project.model.VendorVO;

@Service
public class VendorServiceImpl implements VendorService {

	@Autowired VendorDAO vendorDAO;
	
	@Transactional
	public void saveVendor(VendorVO vendorVO) {
		// TODO Auto-generated method stub
		this.vendorDAO.saveVendor(vendorVO);
	}
	
	@Transactional
	public List<?> getVendor()
	{
		List<?> vendorList=this.vendorDAO.getVendor();
		return vendorList;
		
	}
	
	@Transactional
	public List<VendorVO> getVendorById(VendorVO vendorVO)
	{
		List<VendorVO> vendorList=this.vendorDAO.getVendorById(vendorVO);
		return vendorList;
	}
	
	@Transactional
	public List<?> getBlockedVendor()
	{
		List<?> vendorList=this.vendorDAO.getBlockedVendor();
		return vendorList;
	}

	@Transactional
	public List<?> getBlockedVendorById(VendorVO vendorVO)
	{
		List<?> blockvendorList=this.vendorDAO.getBlockedVendorById(vendorVO);
		return blockvendorList;
	}

	@Transactional
	public List<?> getRequestedVendor() {
		
		List<?> requestedvendorList=this.vendorDAO.getRequestedVendor();		
		return requestedvendorList;
	}

	@Transactional
	public void rejectVendor(VendorVO vendorVO) {
		
		this.vendorDAO.rejectedVendor(vendorVO);
	}

	@Override
	public List<?> getVendorByLoginId(LoginVO loginvo1) {
		List<?> vendorList=this.vendorDAO.getVendorByLoginId(loginvo1);		
		return vendorList;
	}
	
	
}
