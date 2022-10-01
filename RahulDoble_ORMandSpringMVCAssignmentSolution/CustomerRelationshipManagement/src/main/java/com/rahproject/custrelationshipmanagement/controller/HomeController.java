package com.rahproject.custrelationshipmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	// display starting page which a link to the main page
	@RequestMapping("/")
	public String home() {
		return "demo";
	}

}
