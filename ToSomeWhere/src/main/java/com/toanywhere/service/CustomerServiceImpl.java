package com.toanywhere.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CustomerServiceImpl implements CustomerService {
	
	@Setter(onMethod_ = @Autowired)
	private com.toanywhere.mapper.CustomerMapper mapper;

	@Override
	public void addNewCustomer(com.toanywhere.dto.Customer customer) {
		log.info("addNewCustomer() in CustomerImpl (Service)");
		mapper.addNewCustomer(customer);
	}

	@Override
	public boolean compareIdInDBWithInputId(String id) {
		log.info("compareIdInDBWithInputId() in CustomerImpl (Service)");
		String isId= mapper.compareIdInDBWithInputId(id);
//			log.info("class: " + isId.getClass());
		if (isId == null) {
			log.info("해당 id가 없습니다.");
			return true;
		} else {
			log.info("해당 id가 있습니다.");
			return false;
		}
	}

}
