package com.rahproject.custrelationshipmanagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.rahproject.custrelationshipmanagement.entity.Customer;

@Component
public class CustomerServiceImpl implements CustomerService {

	private SessionFactory sessionFactory;
	private Session session;

	@Autowired
	public CustomerServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
	}

	@Override
	@Transactional
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		List<Customer> customer = session.createQuery("from Customer").list();
		tx.commit();
		return customer;
	}

	@Override
	@Transactional
	public Customer findById(int theId) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		Transaction tx = session.beginTransaction();
		customer = session.get(Customer.class, theId);
		tx.commit();
		return customer;
	}

	@Override
	@Transactional
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(customer);
		tx.commit();

	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		Customer customer = session.get(Customer.class, theId);
		session.delete(customer);
		tx.commit();
	}

	public void print(List<Customer> customer) {
		for (Customer cust : customer) {
			System.out.println(cust);
		}
	}

}
