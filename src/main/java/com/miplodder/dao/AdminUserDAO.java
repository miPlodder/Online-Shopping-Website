package com.miplodder.dao;

import com.miplodder.models.AdminUser;
import com.miplodder.models.LoginCredential;
import com.miplodder.repository.AdminUserRepository;
import com.miplodder.utils.BeanUtil;

public class AdminUserDAO {

	AdminUserRepository adminUserRepository;

	public AdminUser checkLoginCredentials(LoginCredential loginCredential) {
		adminUserRepository = BeanUtil.getBean(AdminUserRepository.class);
		AdminUser adminUser = adminUserRepository.findByAdminNameAndPassword(loginCredential.getUsername(),
				loginCredential.getPassword());
		return adminUser;
	}

	public AdminUser getAdminUserDetails(int adminId) {
		adminUserRepository = BeanUtil.getBean(AdminUserRepository.class);
		AdminUser adminUser = adminUserRepository.findById(adminId).get();
		return adminUser;
	}

}
