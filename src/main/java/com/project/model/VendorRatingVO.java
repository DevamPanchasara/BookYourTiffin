package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "vendor_rating_table")
public class VendorRatingVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "feedback_subject")
	private String ratingSubject;

	@Column(name = "feedback_rating")
	private String vendorRating;

	@Column(name = "status")
	private boolean status = true;

	@ManyToOne
	@JoinColumn(name = "vendor_id")
	private VendorVO vendorVO;

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRatingSubject() {
		return ratingSubject;
	}

	public void setRatingSubject(String ratingSubject) {
		this.ratingSubject = ratingSubject;
	}

	public String getVendorRating() {
		return vendorRating;
	}

	public void setVendorRating(String vendorRating) {
		this.vendorRating = vendorRating;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public VendorVO getVendorVO() {
		return vendorVO;
	}

	public void setVendorVO(VendorVO vendorVO) {
		this.vendorVO = vendorVO;
	}

}
