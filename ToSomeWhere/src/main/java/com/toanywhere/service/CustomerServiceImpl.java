package com.toanywhere.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toanywhere.dto.CustomerInfo;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CustomerServiceImpl implements CustomerService {
	
	@Setter(onMethod_ = @Autowired)
	private com.toanywhere.mapper.CustomerMapper mapper;

	@Override
	public void addNewCustomer(com.toanywhere.dto.CustomerInfo customer) {
		log.info("addNewCustomer() in CustomerImpl (Service)");
		mapper.addNewCustomer(customer);
	}

	@Override
	public boolean compareIdInDBWithInputId(String id) {
		log.info("compareIdInDBWithInputId() in CustomerImpl (Service)");
		String isId= mapper.compareIdInDBWithInputId(id);
//			log.info("class: " + isId.getClass());
		if (isId == null) {
//			log.info("해당 id에 대한 정보가 없습니다.");
			return true;
		} else {
//			log.info("해당 id에 대한 정보가 있습니다.");
			return false;
		}
	}

	@Override
	public CustomerInfo getCustomerInfoOne(String id) {
		log.info("getCustomerInfo() in CustomerImpl (Service)");
		boolean isId = compareIdInDBWithInputId(id)?false:true;
//		log.info("isId: " + isId);
		CustomerInfo customerInfoOne = mapper.customerInfoOne(id);
//		log.info("customerInfoOne: " + customerInfoOne);
		return customerInfoOne;
	}

}
