package com.miplodder.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "adminuser")
public class AdminUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "adminid")
	private int adminId;

	@Column(name = "adminname")
	private String adminName;

	private int age;

	private String address;

	private String password;

	private String gender;

	public AdminUser() {

	}

	public AdminUser(String adminName, int age, String address, String password, String gender) {
		super();
		this.adminName = adminName;
		this.age = age;
		this.address = address;
		this.password = password;
		this.gender = gender;
	}

	public AdminUser(int adminId, String adminName, int age, String address, String password, String gender) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.age = age;
		this.address = address;
		this.password = password;
		this.gender = gender;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
