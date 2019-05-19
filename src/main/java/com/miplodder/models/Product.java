package com.miplodder.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "productid")
	private int productId;

	@Column(name = "productname")
	private String productName;

	private int price;

	private int rating;

	private String description;

	private String seller;

	public Product() {

	}

	public Product(String productName, int price, int rating, String description, String seller) {
		super();
		this.productName = productName;
		this.price = price;
		this.rating = rating;
		this.description = description;
		this.seller = seller;
	}

	public Product(int productId, String productName, int price, int rating, String description, String seller) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.rating = rating;
		this.description = description;
		this.seller = seller;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", price=" + price + ", rating="
				+ rating + ", description=" + description + ", seller=" + seller + "]";
	}
	
	

}
