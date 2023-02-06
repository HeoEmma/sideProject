package com.toanywhere.service;

import java.util.List;

import com.toanywhere.dto.CustomerInfo;

public interface CustomerService {

	void addNewCustomer(com.toanywhere.dto.CustomerInfo customer);

	boolean compareIdInDBWithInputId(String id);

	CustomerInfo getCustomerInfoOne(String id);


}
