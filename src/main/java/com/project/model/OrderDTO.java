package com.project.model;

import java.util.List;

public class OrderDTO {

	private int person;
	private List<OrderDetailsDTO> orderList;
	private int vendorLoginId;
	private String firstName;
	private String lastName;
	private String contactno;
	private String email;
	private String address;
	private int area;
	private String totalPrice;

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int person) {
		this.person = person;
	}

	public List<OrderDetailsDTO> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<OrderDetailsDTO> orderList) {
		this.orderList = orderList;
	}

	public int getVendorLoginId() {
		return vendorLoginId;
	}

	public void setVendorLoginId(int vendorLoginId) {
		this.vendorLoginId = vendorLoginId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

}
