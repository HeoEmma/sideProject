package com.toanywhere.controller;

import java.text.DateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.toanywhere.dto.Customer;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
//	@Autowired
//	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	
	@RequestMapping("/registration")
	public String registration() {
		return "registration/registration";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "registration/login";
	}
	
	@RequestMapping("/loginOK")
	public String loginOK(HttpServletRequest request, Model model) {
		return "index";
	}
	
	@RequestMapping("/joininOK")
	public String joininOK(@RequestParam("rePassword")String rePassword, Model model, Customer customer) {
//		db�� ���� �߰�.
		log.info("customer: " + customer);
		log.info("customer.getPassowrd(): " + customer.getPassword());
		log.info("rePassword: " + rePassword);
		
		return "redirect:loginOK";
	}
	
	
}
