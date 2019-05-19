package com.miplodder.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "userid")
	private int id;

	private String username;

	private int age;

	private String gender;

	private String address;

	private String password;	

	public User() {

	}

	public User(String username, int age, String gender, String address, String password) {
		super();
		this.username = username;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.password = password;
	}

	public User(int id, String username, int age, String gender, String address, String password) {
		super();
		this.id = id;
		this.username = username;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", age=" + age + ", gender=" + gender + ", address="
				+ address + ", password=" + password + "]";
	}

}
