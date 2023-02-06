package com.toanywhere.mapper;

import com.toanywhere.dto.Customer;

public interface CustomerMapper {
	
	// insert new customer
	void addNewCustomer(Customer customer);

	// select id(in DB) where id=#{id} 
	String compareIdInDBWithInputId(String id);

}
