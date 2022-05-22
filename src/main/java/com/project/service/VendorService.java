package com.project.service;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.VendorVO;

public interface VendorService {

	public void saveVendor(VendorVO vendorVO);

	public List<?> getVendor();

	public List<VendorVO> getVendorById(VendorVO vendorVO);

	public List<?> getBlockedVendor();

	public List<?> getBlockedVendorById(VendorVO vendorVO);

	public List<?> getRequestedVendor();

	public void rejectVendor(VendorVO vendorVO);

	public List<?> getVendorByLoginId(LoginVO loginvo1);
}
