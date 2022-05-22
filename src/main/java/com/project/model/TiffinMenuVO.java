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
@Table(name = "tiffinMenu_table")
public class TiffinMenuVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "time_from")
	private String timefrom;

	@Column(name = "time_to")
	private String timeto;

	@Column(name = "day")
	private String day;

	@Column(name = "price")
	private String price;

	@Column(name = "status")
	private boolean status = true;

	@ManyToOne
	@JoinColumn(name = "meal_id")
	private MealVO mealVO;

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	public MealVO getMealVO() {
		return mealVO;
	}

	public void setMealVO(MealVO mealVO) {
		this.mealVO = mealVO;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTimefrom() {
		return timefrom;
	}

	public void setTimefrom(String timefrom) {
		this.timefrom = timefrom;
	}

	public String getTimeto() {
		return timeto;
	}

	public void setTimeto(String timeto) {
		this.timeto = timeto;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
