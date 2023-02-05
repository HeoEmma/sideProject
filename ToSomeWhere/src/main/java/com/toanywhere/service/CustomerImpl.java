package com.toanywhere.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CustomerImpl implements CustomerService {
	
	@Setter(onMethod_ = @Autowired)
	private com.toanywhere.mapper.CustomerMapper mapper;

	@Override
	public void addNewCustomer(com.toanywhere.dto.Customer customer) {
		log.info("addNewCustomer() in CustomerImpl (Service)");
		mapper.addNewCustomer(customer);
	}

}
