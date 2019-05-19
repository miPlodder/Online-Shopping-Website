package com.miplodder.controllers.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miplodder.constants.Constants;
import com.miplodder.dao.ProductDAO;
import com.miplodder.models.Product;

@Controller
@RequestMapping("admin/products")
public class AdminProductsController {

	ProductDAO productDAO;

	public AdminProductsController() {
		productDAO = new ProductDAO();
	}

	@GetMapping
	public String showAllProducts(ModelMap modelMap) {
		List<Product> products = productDAO.getAllProducts();
		modelMap.addAttribute(Constants.ADMIN_PRODUCTS, products);
		return "adminproducts.jsp";
	}

	@GetMapping("/{productId}")
	public String updateProductView(@PathVariable String productId, ModelMap modelMap) {
		Product product = productDAO.getProductById(Integer.parseInt(productId));
		modelMap.put(Constants.ADMIN_PRODUCT, product);
		return "adminupdateproduct.jsp";
	}

	@PostMapping
	public String updateProductSubmit(@ModelAttribute Product product) {
		productDAO.updateProduct(product);
		return "redirect:/admin/home";
	}
}
