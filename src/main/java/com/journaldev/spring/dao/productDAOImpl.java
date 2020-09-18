package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.product;

@Repository
public class productDAOImpl implements productDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(productDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addproduct(product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("product saved successfully, product Details="+p);
	}

	@Override
	public void updateproduct(product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("product updated successfully, product Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<product> listproducts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<product> productsList = session.createQuery("from product").list();
		for(product p : productsList){
			logger.info("product List::"+p);
		}
		return productsList;
	}

	@Override
	public product getproductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		product p = (product) session.load(product.class, id);
		logger.info("product loaded successfully, product details="+p);
		return p;
	}

	@Override
	public void removeproduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		product p = (product) session.load(product.class, id);
		if(null != p){
			session.delete(p);
		}
		logger.info("product deleted successfully, product details="+p);
	}

}
