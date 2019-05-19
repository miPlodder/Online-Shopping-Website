package com.miplodder.dao;

import java.util.ArrayList;
import java.util.List;

import com.miplodder.models.Order;
import com.miplodder.models.OrderProduct;
import com.miplodder.models.Product;
import com.miplodder.models.User;
import com.miplodder.repository.OrderRepository;
import com.miplodder.repository.ProductRepository;
import com.miplodder.repository.UserRepository;
import com.miplodder.utils.BeanUtil;

public class OrderDAO {

	OrderRepository orderRepository;
	UserRepository userRepository;
	ProductRepository productRepository;

	public List<OrderProduct> getOrderProductList(String username) {

		List<OrderProduct> orderProducts = new ArrayList<OrderProduct>();

		orderRepository = BeanUtil.getBean(OrderRepository.class);
		userRepository = BeanUtil.getBean(UserRepository.class);
		productRepository = BeanUtil.getBean(ProductRepository.class);

		User user = userRepository.findByUsername(username);
		List<Order> orders = orderRepository.findByUserId(user.getId());

		for (Order order : orders) {
			Product product = productRepository.findByProductId(order.getProductId());
			orderProducts.add(new OrderProduct(order.getOrderId(), product.getProductName(), product.getPrice(),
					order.getShippingAddress(), order.getCity(), order.getCountry(), order.getQuantity(),
					order.getDate()));
		}
		return orderProducts;
	}

	public void insertOrder(Order order) {
		orderRepository = BeanUtil.getBean(OrderRepository.class);
		orderRepository.save(order);
	}
}
