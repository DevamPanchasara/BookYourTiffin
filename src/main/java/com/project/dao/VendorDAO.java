package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.VendorVO;

public interface VendorDAO {

	void saveVendor(VendorVO vendorVO);

	List<?> getVendor();

	List<VendorVO> getVendorById(VendorVO vendorVO);

	List<?> getBlockedVendor();

	List<?> getBlockedVendorById(VendorVO vendorVO);

	List<?> getRequestedVendor();

	void rejectedVendor(VendorVO vendorVO);

	List<?> getVendorByLoginId(LoginVO loginvo1);

}
