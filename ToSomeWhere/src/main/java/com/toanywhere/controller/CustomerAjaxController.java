package com.toanywhere.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.toanywhere.dto.CustomerInfo;
import com.toanywhere.service.CustomerService;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/customer")
@Slf4j
public class CustomerAjaxController {
	
	@Setter(onMethod_= @Autowired)
	private CustomerService service;
	
	@PostMapping(value="/new")
	@ResponseBody
	public Map<String, Object> addNewCustomer(@RequestBody com.toanywhere.dto.CustomerInfo customer) {
		log.info("addNewCustomer()");
//		log.info("customer: " + customer);
		service.addNewCustomer(customer);
		//json 배열 처리용
		JSONObject jsonObj = new JSONObject();
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
//		log.info("isRightId()");
		log.info("id: " + customer.getId());
		CustomerInfo customerInfoOne = service.getCustomerInfoOne(customer.getId());
		log.info("customerInfoOne: " + customerInfoOne);
//		log.info("customerInfoOne.getId(): " + customerInfoOne.getId());
//		log.info("customerInfoOne.getPassword(): " + customerInfoOne.getPassword());
		hmap.put("customerId", customerInfoOne.getCustomerId());
		hmap.put("id", customerInfoOne.getId());
		hmap.put("password", customerInfoOne.getPassword());
		hmap.put("name", customerInfoOne.getName());
		hmap.put("email", customerInfoOne.getEmail());
		jsonObj = new JSONObject(hmap);
		return jsonObj;
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
	
	@GetMapping(value="/isRightId")
	@ResponseBody
	public Map<String, Object> isRightId(@RequestParam("id") String id) {
		
		//json 배열 처리용
		JSONObject jsonObj = new JSONObject();
		HashMap<String, Object> hmap = new HashMap<String, Object>();
		
		log.info("isRightId()");
		log.info("id: " + id);
		CustomerInfo customerInfoOne = service.getCustomerInfoOne(id);
		log.info("customerInfoOne: " + customerInfoOne);
		if(customerInfoOne == null) {
			// 일치하는 id가 db에 저장되어 있지 않음.
			// 아이디를 잘못 입력함.
			return null;
		} else {
			log.info("customerInfoOne.getId(): " + customerInfoOne.getId());
			log.info("customerInfoOne.getPassword(): " + customerInfoOne.getPassword());
			hmap.put("customerId", customerInfoOne.getCustomerId());
			hmap.put("id", customerInfoOne.getId());
			hmap.put("password", customerInfoOne.getPassword());
			hmap.put("name", customerInfoOne.getName());
			hmap.put("email", customerInfoOne.getEmail());
			jsonObj = new JSONObject(hmap);
			return jsonObj;
		}
	}
	
	@PostMapping(value="/loginInfoToSession")
	@ResponseBody
	public String loginInfoToSession(@RequestBody com.toanywhere.dto.CustomerInfo customerInfo, 
			HttpServletRequest request) {
		log.info("loginInfoToSession()");
		log.info("customer: " + customerInfo);
		HttpSession session = request.getSession();
		session.setAttribute("customerInfo", customerInfo);
		return "index";
	}
	
}
