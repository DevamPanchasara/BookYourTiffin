package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "package_table")
public class PackageVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "package_name")
	private String packageName;

	@Column(name = "package_description")
	private String packageDescription;

	@Column(name = "package_range_from")
	private String packageRangeFrom;

	@Column(name = "package_rangeto")
	private String packageRangeTo;

	@Column(name = "Percentage")
	private String percentage;

	@Column(name = "package_duration")
	private String packageDuration;

	@Column(name = "status")
	private boolean status = true;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String getPackageDescription() {
		return packageDescription;
	}

	public void setPackageDescription(String packageDescription) {
		this.packageDescription = packageDescription;
	}

	public String getPackageRangeFrom() {
		return packageRangeFrom;
	}

	public void setPackageRangeFrom(String packageRangeFrom) {
		this.packageRangeFrom = packageRangeFrom;
	}

	public String getPackageRangeTo() {
		return packageRangeTo;
	}

	public void setPackageRangeTo(String packageRangeTo) {
		this.packageRangeTo = packageRangeTo;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getPackageDuration() {
		return packageDuration;
	}

	public void setPackageDuration(String packageDuration) {
		this.packageDuration = packageDuration;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
