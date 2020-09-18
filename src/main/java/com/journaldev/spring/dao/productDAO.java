package com.journaldev.spring.dao;

import java.util.List;

import com.journaldev.spring.model.product;

public interface productDAO {

	public void addproduct(product p);
	public void updateproduct(product p);
	public List<product> listproducts();
	public product getproductById(int id);
	public void removeproduct(int id);
}
