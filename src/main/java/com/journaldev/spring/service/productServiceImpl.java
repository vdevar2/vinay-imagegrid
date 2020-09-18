package com.journaldev.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.productDAO;
import com.journaldev.spring.model.product;

@Service
public class productServiceImpl implements productService {
	
	private productDAO productDAO;

	public void setproductDAO(productDAO productDAO) {
		this.productDAO = productDAO;
	}

	@Override
	@Transactional
	public void addproduct(product p) {
		this.productDAO.addproduct(p);
	}

	@Override
	@Transactional
	public void updateproduct(product p) {
		this.productDAO.updateproduct(p);
	}

	@Override
	@Transactional
	public List<product> listproducts() {
		return this.productDAO.listproducts();
	}

	@Override
	@Transactional
	public product getproductById(int id) {
		return this.productDAO.getproductById(id);
	}

	@Override
	@Transactional
	public void removeproduct(int id) {
		this.productDAO.removeproduct(id);
	}

}
