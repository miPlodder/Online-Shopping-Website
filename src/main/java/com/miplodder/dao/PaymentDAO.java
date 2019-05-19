package com.miplodder.dao;

import com.miplodder.models.Payment;
import com.miplodder.repository.PaymentRepository;
import com.miplodder.utils.BeanUtil;

public class PaymentDAO {

	PaymentRepository paymentRepository;

	public void savePaymentInformation(Payment payment) {
		PaymentRepository paymentRepository = BeanUtil.getBean(PaymentRepository.class);
		paymentRepository.save(payment);
	}
}
