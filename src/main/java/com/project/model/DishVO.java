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
@Table(name = "dish_table")
public class DishVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "dish_name")
	private String dishName;

	@Column(name = "dishfile_name")
	private String dishfileName;

	@Column(name = "dishfile_path")
	private String dishfilePath;

	@Column(name = "status")
	private boolean status = true;

	@ManyToOne
	@JoinColumn(name = "tiffin_menu_id")
	private TiffinMenuVO tiffinMenuVO;

	public String getDishfileName() {
		return dishfileName;
	}

	public void setDishfileName(String dishfileName) {
		this.dishfileName = dishfileName;
	}

	public String getDishfilePath() {
		return dishfilePath;
	}

	public void setDishfilePath(String dishfilePath) {
		this.dishfilePath = dishfilePath;
	}

	public TiffinMenuVO getTiffinMenuVO() {
		return tiffinMenuVO;
	}

	public void setTiffinMenuVO(TiffinMenuVO tiffinMenuVO) {
		this.tiffinMenuVO = tiffinMenuVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
