package com.project.service;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.OrderDetailsVO;
import com.project.model.OrderVO;
import com.project.model.VendorVO;

public interface OrderService {

	public void saveOrder(OrderVO orderVO);

	public void saveOrder(OrderDetailsVO detailsVO);

	public List<?> getOrder(LoginVO loginVO);

	public List<?> getUserOrder(LoginVO loginVO1);

	public List<?> getorderDetailsList(OrderVO orderVO);

	public List<?> viewOrderDetailsByOrderId(int id);
	
	List getOrderCountByVendorId(VendorVO vendorVO);

	public List getOrderCountByMonth(int i);

}
