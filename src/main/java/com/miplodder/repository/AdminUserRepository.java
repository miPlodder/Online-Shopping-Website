package com.miplodder.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.miplodder.models.AdminUser;

@Repository
public interface AdminUserRepository extends JpaRepository<AdminUser, Integer> {

	AdminUser findByAdminNameAndPassword(String adminName, String password);
}
