package com.miplodder.controllers.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miplodder.constants.Constants;
import com.miplodder.dao.OrderDAO;
import com.miplodder.models.Order;

@Controller
@RequestMapping("admin/orders")
public class AdminOrderController {

	OrderDAO orderDAO;

	public AdminOrderController() {
		orderDAO = new OrderDAO();
	}

	@GetMapping
	public String showOrders(HttpSession httpSession, ModelMap modelMap) {
		List<Order> orders = orderDAO.getAllOrder();
		modelMap.addAttribute(Constants.ADMIN_ORDER_PRODUCTS, orders);
		return "adminorders.jsp";
	}
}
