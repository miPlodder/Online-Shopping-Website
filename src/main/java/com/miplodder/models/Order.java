package com.miplodder.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderid")
	int orderId;

	@Column(name = "userid")
	int userId;

	@Column(name = "productid")
	int productId;

	@Column(name = "shippingaddress")
	String shippingAddress;

	@Column(name = "city")
	String city;

	@Column(name = "country")
	String country;

	@Column(name = "quantity")
	int quantity;

	@Column(name = "date")
	String date;

	public Order() {
		super();
	}

	public Order(int orderId, int userId, int productId, String shippingAddress, String city, String country,
			int quantity, String date) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.productId = productId;
		this.shippingAddress = shippingAddress;
		this.city = city;
		this.country = country;
		this.quantity = quantity;
		this.date = date;
	}

	public Order(int userId, int productId, String shippingAddress, String city, String country, int quantity,
			String date) {
		super();
		this.userId = userId;
		this.productId = productId;
		this.shippingAddress = shippingAddress;
		this.city = city;
		this.country = country;
		this.quantity = quantity;
		this.date = date;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userId=" + userId + ", productId=" + productId + ", shippingAddress="
				+ shippingAddress + ", city=" + city + ", country=" + country + ", quantity=" + quantity + ", date="
				+ date + "]";
	}

}
