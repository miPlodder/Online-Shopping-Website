package com.miplodder.models;

public class OrderProduct {

	int orderId;
	String productName;
	int price;
	String shippingAddress;
	String city;
	String country;
	int quantity;
	String date;

	public OrderProduct(int orderId, String productName, int price, String shippingAddress, String city, String country,
			int quantity, String date) {
		super();
		this.orderId = orderId;
		this.productName = productName;
		this.price = price;
		this.shippingAddress = shippingAddress;
		this.city = city;
		this.country = country;
		this.quantity = quantity;
		this.date = date;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

}
