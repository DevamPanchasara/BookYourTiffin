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
@Table(name = "order_details_vo")
public class OrderDetailsVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "days")
	private int days;

	@ManyToOne
	@JoinColumn(name = "order_id")
	private OrderVO ordervo;

	@ManyToOne
	@JoinColumn(name = "meal_id")
	private MealVO mealVO;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public OrderVO getOrdervo() {
		return ordervo;
	}

	public void setOrdervo(OrderVO ordervo) {
		this.ordervo = ordervo;
	}

	public MealVO getMealVO() {
		return mealVO;
	}

	public void setMealVO(MealVO mealVO) {
		this.mealVO = mealVO;
	}

}
