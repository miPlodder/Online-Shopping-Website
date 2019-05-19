package com.miplodder.dao;

import java.util.List;

public interface BaseDAO<T> {
	
	T read(String username);
	
	List<T> readAll();
	
	boolean create(T t);
	
	boolean update(T t);
	
	boolean delete(T t);
	
}
