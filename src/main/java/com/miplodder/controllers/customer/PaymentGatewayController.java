package com.miplodder.controllers.customer;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miplodder.constants.Constants;
import com.miplodder.dao.OrderDAO;
import com.miplodder.dao.PaymentDAO;
import com.miplodder.models.Order;
import com.miplodder.models.Payment;

@Controller
@RequestMapping("/paymentgateway")
public class PaymentGatewayController {

	OrderDAO orderDAO;
	PaymentDAO paymentDAO;

	public PaymentGatewayController() {
		orderDAO = new OrderDAO();
		paymentDAO = new PaymentDAO();
	}

	@PostMapping
	public String showPaymentPaymentProcessing(@ModelAttribute Payment payment, HttpSession httpSession) {
		paymentDAO.savePaymentInformation(payment);
		Order order = (Order) httpSession.getAttribute(Constants.ORDER);
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		order.setDate(dateFormat.format(new Date()));
		orderDAO.insertOrder(order);
		return "paymentgateway.jsp";
	}
}
