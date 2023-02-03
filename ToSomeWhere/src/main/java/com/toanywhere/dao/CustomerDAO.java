package com.toanywhere.dao;

import org.springframework.beans.factory.annotation.Autowired;

public interface CustomerDAO {
	
	void addNewCustomer(com.toanywhere.dto.Customer customer);

}
