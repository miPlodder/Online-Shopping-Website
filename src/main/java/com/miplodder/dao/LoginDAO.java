package com.miplodder.dao;

import com.miplodder.models.LoginCredential;
import com.miplodder.models.User;
import com.miplodder.repository.UserRepository;
import com.miplodder.utils.BeanUtil;

public class LoginDAO {

	UserRepository userRepository;

	public User login(LoginCredential loginCredential) {
		userRepository = BeanUtil.getBean(UserRepository.class);
		User user = userRepository.findByUsernameAndPassword(loginCredential.getUsername(),
				loginCredential.getPassword());
		return user;
	}

}
