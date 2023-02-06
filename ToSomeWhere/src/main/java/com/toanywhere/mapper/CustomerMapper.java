package com.toanywhere.mapper;

import com.toanywhere.dto.CustomerInfo;

public interface CustomerMapper {
	
	// insert new customer
	void addNewCustomer(CustomerInfo customer);

	// select id(in DB) where id=#{id} 
	String compareIdInDBWithInputId(String id);

	// select customerInfo by id
	CustomerInfo customerInfoOne(String id);

}
