package com.miplodder.controllers.customer;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miplodder.constants.Constants;
import com.miplodder.dao.ProductDAO;
import com.miplodder.models.Product;

@Controller
@RequestMapping("products")
@SessionAttributes(Constants.PRODUCT_ID)
public class ProductsController {

	ProductDAO productDAO;

	public ProductsController() {
		productDAO = new ProductDAO();
	}

	@GetMapping
	public String showProducts(Model model) {
		List<Product> products = productDAO.getAllProducts();
		model.addAttribute(Constants.PRODUCTS, products);
		return "products.jsp";
	}
	
	@PostMapping("/{productId}")
	public String showProduct(@PathVariable String productId, Model model) {
		Product product = productDAO.getProductById(Integer.parseInt(productId));
		model.addAttribute(Constants.PRODUCT_ID, productId); //adding to session
		model.addAttribute(Constants.PRODUCT, product); //adding to JSP
		return "product.jsp";
	}
}
