package com.cg.mypaymentapp.service;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cg.mypaymentapp.beans.Customer;
import com.cg.mypaymentapp.beans.Wallet;
import com.cg.mypaymentapp.exception.InsufficientBalanceException;
import com.cg.mypaymentapp.exception.InvalidInputException;
import com.cg.mypaymentapp.repo.WalletRepo;

@Component(value = "walletService")
public class WalletServiceImpl implements WalletService {
	@Autowired
	private WalletRepo repo;

	@Transactional(propagation = Propagation.REQUIRED)
	@Override
	public Customer createAccount(Customer customer) {


		repo.save(customer);

		return customer;
	}

	public Customer showBalance(String mobileNo) {
		Customer customer = repo.findOne(mobileNo);
		if (customer != null)
			return customer;
		else
			throw new InvalidInputException("Invalid mobile no ");
	}

	public Customer fundTransfer(String sourceMobileNo, String targetMobileNo, BigDecimal amount) {
		Customer customerSrc = withdrawAmount(sourceMobileNo, amount);
		Customer customerTgt = depositAmount(targetMobileNo, amount);
		if (customerSrc != null && customerTgt != null)
			return customerSrc;
		else
			return null;
	}

	public Customer depositAmount(String mobileNo, BigDecimal amount) {
		Customer customer = repo.findOne(mobileNo);
		if (customer != null) {
			BigDecimal currBalance = customer.getWallet().getBalance();
			BigDecimal finalBalance = currBalance.add(amount);
			Wallet wallet = customer.getWallet();
			wallet.setBalance(finalBalance);
			customer.setWallet(wallet);
			repo.save(customer);
			return customer;
		} else
			throw new InvalidInputException("Invalid mobile no ");

	}

	@Override
	public Customer withdrawAmount(String mobileNo, BigDecimal amount) {
		Customer customer = repo.findOne(mobileNo);
		if (customer != null) {
			BigDecimal currBalance = customer.getWallet().getBalance();
			int compare = currBalance.compareTo(amount);
			if (compare == -1) {
				throw new InsufficientBalanceException("Insufficient Balance to complete the transaction");
			} else {
				BigDecimal finalBalance = currBalance.subtract(amount);
				Wallet wallet = customer.getWallet();
				wallet.setBalance(finalBalance);
				customer.setWallet(wallet);
				repo.save(customer);
				return customer;
			}
		} else
			throw new InvalidInputException("Invalid mobile no ");
	}



}