package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.OrderDAO;
import com.project.model.LoginVO;
import com.project.model.OrderDetailsVO;
import com.project.model.OrderVO;
import com.project.model.VendorVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDAO orderDAO;

	@Transactional
	public void saveOrder(OrderVO orderVO) {
		this.orderDAO.saveArea(orderVO);
	}

	@Override
	@Transactional
	public void saveOrder(OrderDetailsVO detailsVO) {
		this.orderDAO.saveArea(detailsVO);
	}

	@Override
	public List<?> getOrder(LoginVO loginVO) {
		List<?> ls = this.orderDAO.getOrder(loginVO);
		return ls;
	}

	@Override
	public List<?> getUserOrder(LoginVO loginVO) {
		return this.orderDAO.getUserOrder(loginVO);
	}

	@Override
	public List<?> getorderDetailsList(OrderVO orderVO) {
		List<?> ls = this.orderDAO.getorderDetailsList(orderVO);
		return ls;
	}

	@Override
	public List<?> viewOrderDetailsByOrderId(int id) {
		List<?> ls = this.orderDAO.viewOrderDetailsByOrderId(id);
		return ls;
	}
	
	public List getOrderCountByVendorId(VendorVO vendorVO){
		return this.orderDAO.getOrderCountByVendorId(vendorVO);
	}

	@Override
	public List getOrderCountByMonth(int i) {
		return this.orderDAO.getOrderCountByMonth(i);
	}

}
