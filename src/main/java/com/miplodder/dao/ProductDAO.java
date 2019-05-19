package com.miplodder.dao;

import java.util.List;

import com.miplodder.models.Product;
import com.miplodder.repository.ProductRepository;
import com.miplodder.utils.BeanUtil;

public class ProductDAO {

	ProductRepository productRepository;

	public List<Product> getAllProducts() {
		productRepository = BeanUtil.getBean(ProductRepository.class);
		List<Product> products = productRepository.findAll();
		return products;
	}

	public Product getProductById(int productId) {
		productRepository = BeanUtil.getBean(ProductRepository.class);
		return productRepository.findByProductId(productId);
	}

	public Product addProduct(Product product) {
		productRepository = BeanUtil.getBean(ProductRepository.class);
		productRepository.save(product);
		return product;
	}

	public Product updateProduct(Product product) {
		productRepository.save(product);
		return product;
	}

}
