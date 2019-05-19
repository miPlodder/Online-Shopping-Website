package com.miplodder.dao;

import com.miplodder.models.User;
import com.miplodder.repository.UserRepository;
import com.miplodder.utils.BeanUtil;

public class ProfileDAO {

	public User profile(String username) {
		UserRepository userRepository = BeanUtil.getBean(UserRepository.class);
		return userRepository.findByUsername(username);
	}

}
