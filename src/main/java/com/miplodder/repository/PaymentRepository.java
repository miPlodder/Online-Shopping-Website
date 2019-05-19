package com.miplodder.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.miplodder.models.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Integer> {

}
