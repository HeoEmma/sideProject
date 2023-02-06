package com.toanywhere.controller;

import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.text.DateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.toanywhere.dto.CustomerInfo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CustomerController {
	
//	@Autowired
//	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	@RequestMapping("index")
	public String index() {
		return "redirect:/";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	
	@RequestMapping("/registration")
	public String registration() {
		return "customer/registration/registration";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "customer/registration/login";
	}
	
	@RequestMapping("/loginOK")
	public String loginOK(HttpServletRequest request, Model model) {
		return "index";
	}
	
	@RequestMapping("/joininOK")
	public String joininOK(@RequestParam("rePassword")String rePassword, Model model, CustomerInfo customer) {
//		db�� ���� �߰�.
		log.info("customer: " + customer);
		log.info("customer.getPassowrd(): " + customer.getPassword());
		log.info("rePassword: " + rePassword);
		
		return "redirect:loginOK";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletResponse response) {
		log.info("logout() in HomeController class");
		session.removeAttribute("customerInfo"); //세션 제거
		return "redirect:/";
	}
	
}
