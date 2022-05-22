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
@Table(name="area_table")
public class AreaVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="area_name")
	private String areaName;
	

	@Column(name="area_description")
	private String areaDescription;
	
	
	@Column(name = "status")
	private boolean status = true;
	
	@ManyToOne
	@JoinColumn(name="city_id")
	private CityVO cityvo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAreaDescription() {
		return areaDescription;
	}

	public void setAreaDescription(String areaDescription) {
		this.areaDescription = areaDescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public CityVO getCityvo() {
		return cityvo;
	}

	public void setCityvo(CityVO cityvo) {
		this.cityvo = cityvo;
	}
	
	
	
}
