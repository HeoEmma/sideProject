package com.toanywhere.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toanywhere.service.CustomerService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/customer")
@Slf4j
public class CustomerController {
	
	@Setter(onMethod_= @Autowired)
	private CustomerService service;
	
	@PostMapping(value="/new")
	@ResponseBody
	public void addNewCustomer(@RequestBody com.toanywhere.dto.Customer customer) {
		log.info("addNewCustomer()");
//		log.info("customer: " + customer);
		service.addNewCustomer(customer);
	}
	
	@GetMapping(value="/idDuplicationChk")
	@ResponseBody
	public String idDuplicationChk(@RequestParam("id") String id) {
		log.info("idDuplicationChk()");
//		log.info("id: " + id);
		boolean isUseableId = service.compareIdInDBWithInputId(id);
//		log.info("isUseableId: " + isUseableId);
		return String.valueOf(isUseableId);
	}
	
}
