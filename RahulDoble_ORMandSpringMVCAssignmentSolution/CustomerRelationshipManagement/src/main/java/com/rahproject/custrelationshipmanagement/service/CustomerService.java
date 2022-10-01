package com.rahproject.custrelationshipmanagement.service;

import java.util.List;

import com.rahproject.custrelationshipmanagement.entity.Customer;

public interface CustomerService {

	// create, read, update, delete, save

	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer customer);

	public void deleteById(int theId);

}
