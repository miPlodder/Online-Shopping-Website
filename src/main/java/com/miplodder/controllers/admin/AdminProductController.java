package com.miplodder.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miplodder.dao.ProductDAO;
import com.miplodder.models.Product;

@Controller
@RequestMapping("/admin/product")
public class AdminProductController {

	ProductDAO productDAO;

	public AdminProductController() {
		productDAO = new ProductDAO();
	}

	@GetMapping
	public String addProductView() {
		return "adminproduct.jsp";
	}

	@PostMapping
	public String addProduct(@ModelAttribute Product product) {
		productDAO.addProduct(product);
		return "redirect:/admin/home";
	}
}
