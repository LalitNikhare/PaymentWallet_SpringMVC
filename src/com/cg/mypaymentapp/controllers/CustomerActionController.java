package com.cg.mypaymentapp.controllers;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cg.mypaymentapp.beans.Customer;
import com.cg.mypaymentapp.service.WalletService;

@Controller
public class CustomerActionController {

	@Autowired
	WalletService walletService;

	@RequestMapping(value = "/registerCustomer")
	public ModelAndView registerCustomer(@ModelAttribute("customer") Customer customer, BindingResult result) {
		try {
			if (result.hasErrors())
				return new ModelAndView("registration");
			customer = walletService.createAccount(customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("registrationSuccess", "customer", customer);
	}

	@RequestMapping(value = "/loginCustomer")
	public ModelAndView loginCustomer(@ModelAttribute("customer") Customer customer, BindingResult result) {
		try {
			if (result.hasErrors())
				return new ModelAndView("registration");
			customer = walletService.showBalance(customer.getMobileNo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("home", "customer", customer);
	}
	
	@RequestMapping(value = "/showBalance")
	public ModelAndView showCustomer(@ModelAttribute("customer") Customer customer, BindingResult result ) {
		try {
			if(result.hasErrors())
				return new ModelAndView("login");
			customer = walletService.showBalance(customer.getMobileNo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("balanceResult", "customer", customer);
	}
	@RequestMapping(value = "/depositCustomer")
	public ModelAndView depositCustomer(@ModelAttribute("customer") Customer customer, BindingResult result ) {
		try {
			if(result.hasErrors())
				return new ModelAndView("login");
			customer = walletService.depositAmount(customer.getMobileNo(), customer.getWallet().getBalance());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("depositSuccess", "customer", customer);
	}
	@RequestMapping(value = "/withdrawCustomer")
	public ModelAndView withdrawCustomer(@ModelAttribute("customer") Customer customer, BindingResult result ) {
		try {
			if(result.hasErrors())
				return new ModelAndView("login");
			customer = walletService.withdrawAmount(customer.getMobileNo(), customer.getWallet().getBalance());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("withdrawSuccess", "customer", customer);
	}
//	@RequestMapping(value = "/transferCustomer")
//	public ModelAndView transferCustomer(@ModelAttribute("customer") Customer customer, BindingResult result ) {
//	
//		try {
//			if(result.hasErrors())
//				return new ModelAndView("login");
//			customer = walletService.fundTransfer(customer.getName(), customer.getMobileNo(), customer.getWallet().getBalance());
//		
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return new ModelAndView("transferSuccess", "customer", customer);
//	}
	@RequestMapping(value = "/transferCustomer")
	public ModelAndView transferCustomer(@ModelAttribute("customer") Customer customer, HttpServletRequest req,BindingResult result ) {
	
		try {
			if(result.hasErrors())
				return new ModelAndView("login");
			customer = walletService.fundTransfer(req.getParameter("mobile1"),req.getParameter("mobile2"), req.getParameter("amount"));
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ModelAndView("transferSuccess", "customer", customer);
	}
}
