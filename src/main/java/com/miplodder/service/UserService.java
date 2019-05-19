package com.miplodder.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.miplodder.models.User;
import com.miplodder.repository.UserRepository;

@Component
public class UserService {

	@Autowired
	UserRepository userRepository;

	public User getUserByUsernameAndPassword(String username, String password) {
		User user = userRepository.findByUsernameAndPassword(username, password);
		//System.out.println(user.toString());
		return user;
	}
}
