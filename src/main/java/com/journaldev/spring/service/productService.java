package com.journaldev.spring.service;

import java.util.List;

import com.journaldev.spring.model.product;

public interface productService {

	public void addproduct(product p);
	public void updateproduct(product p);
	public List<product> listproducts();
	public product getproductById(int id);
	public void removeproduct(int id);
	
}
