package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;
import com.project.model.OrderDetailsVO;
import com.project.model.OrderVO;
import com.project.model.VendorVO;

public interface OrderDAO {

	void saveArea(OrderVO orderVO);

	void saveArea(OrderDetailsVO detailsVO);

	List<?> getOrder(LoginVO loginVO);

	List<?> getUserOrder(LoginVO loginVO);

	List<?> getorderDetailsList(OrderVO orderVO);

	List<?> viewOrderDetailsByOrderId(int id);

	List getOrderCountByVendorId(VendorVO vendorVO);

	List getOrderCountByMonth(int i);

}
