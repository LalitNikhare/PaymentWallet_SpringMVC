package com.cg.mypaymentapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.mypaymentapp.beans.Customer;

@Controller
public class URIController {
	@RequestMapping(value = "/")
	public String getindexPage() {
		return "index";
	}


	@RequestMapping(value = "/home")
	public String getHomePage() {
		return "home";
	}

	@RequestMapping(value = "/login")
	public String getLoginPage() {
		return "login";
	}

	
	@RequestMapping(value = "/registration")
	public String getRegistrationPage() {
		return "registration";
	}

	@RequestMapping(value = "/check_balance")
	public String getCheckBalancePage() {
		return "check_balance";
	}


	@RequestMapping(value = "/deposit")
	public String getDepositPage() {
		return "deposit";
	}

	@RequestMapping(value = "/withdraw")
	public String getWithdrawPage() {
		return "withdraw";
	}

	@RequestMapping(value = "/transfer")
	public String getTransferPage() {
		return "transfer";
	}

	@ModelAttribute("customer")
	private Customer getCustomer() {
		return new Customer();
	}


}
