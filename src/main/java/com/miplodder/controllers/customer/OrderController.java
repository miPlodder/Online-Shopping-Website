package com.miplodder.controllers.customer;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.OrderDAO;
import com.miplodder.models.OrderProduct;

@Controller
@RequestMapping("/orders")
@SessionAttributes(Constants.USERNAME)
public class OrderController {

	OrderDAO orderDAO;

	public OrderController() {
		orderDAO = new OrderDAO();
	}

	@GetMapping
	public String getOrderHistory(ModelMap model, HttpSession httpSession) {
		List<OrderProduct> orderProducts = orderDAO
				.getOrderProductList((String) httpSession.getAttribute(Constants.USERNAME));
		Collections.sort(orderProducts, new Comparator<OrderProduct>() {

			@Override
			public int compare(OrderProduct o1, OrderProduct o2) {
				return o1.getOrderId() > o2.getOrderId() ? -1 : 1;
			}

		});
		model.put(Constants.ORDER_PRODUCTS, orderProducts);
		return "orders.jsp";
	}

}
