package com.miplodder.dao;

import com.miplodder.models.User;
import com.miplodder.repository.UserRepository;
import com.miplodder.utils.BeanUtil;

public class SignupDAO {

	UserRepository userRepository;

	public User addNewUser(User user) {
		userRepository = BeanUtil.getBean(UserRepository.class);
		User newUser = userRepository.save(user);
		return newUser;
	}

}
