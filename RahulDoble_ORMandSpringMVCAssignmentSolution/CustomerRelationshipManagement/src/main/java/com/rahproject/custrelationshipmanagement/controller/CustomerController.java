package com.rahproject.custrelationshipmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rahproject.custrelationshipmanagement.entity.Customer;
import com.rahproject.custrelationshipmanagement.service.CustomerService;

@Controller
@RequestMapping("/customerService")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	// for detail list
	@RequestMapping("/list")
	public String listDetails(Model theModel) {
		List<Customer> customer = customerService.findAll();
		theModel.addAttribute("Customer", customer);
		return "Customer-List";
	}

	// for add new customer
	@RequestMapping("/showFormForAdd")
	public String showForAdd(Model theModel) {
		Customer customer = new Customer();
		theModel.addAttribute("Customer", customer);
		return "Customer-Form";

	}

	// for update existing entry
	@RequestMapping("/showFormForUpdate")
	public String showForUpdate(@RequestParam("customerId") int theId, Model theModel) {
		Customer customer = customerService.findById(theId);
		theModel.addAttribute("Customer", customer);
		return "Customer-Form";

	}

	// for delete existing entry
	@RequestMapping("/delete")
	public String delete(@RequestParam("customerId") int theId) {
		customerService.deleteById(theId);
		return "redirect:/customerService/list";

	}

	// for save entry
	@RequestMapping("/save")
	public String save(@RequestParam("id") int theId, @RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		System.out.println(theId);
		Customer customer;
		if (theId != 0) {
			customer = customerService.findById(theId);
			customer.setId(theId);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);
		} else
			customer = new Customer(firstName, lastName, email);
		customerService.save(customer);
		return "redirect:/customerService/list";

	}

}
