package com.miplodder.controllers.admin;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.miplodder.constants.Constants;
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
	public String addProduct(@RequestParam("image") MultipartFile multipartFile, @ModelAttribute Product product) throws IllegalStateException, IOException {
		productDAO.addProduct(product);
		String fileName = product.getProductId() + "."
				+ FilenameUtils.getExtension(multipartFile.getOriginalFilename());
		File file = new File(Constants.PRODUCT_IMG_PATH, fileName);
		multipartFile.transferTo(file.toPath());
		return "redirect:/admin/home";
	}
}
