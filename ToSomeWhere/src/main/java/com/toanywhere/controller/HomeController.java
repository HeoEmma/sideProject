package com.toanywhere.controller;

import java.text.DateFormat;
import java.util.*;
import javax.servlet.http.HttpServlet;
import org.slf4j.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.toanywhere.dto.Customer;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
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
	public String loginOK(HttpServlet request, Model model) {
		return "index";
	}
	
	@RequestMapping("/joininOK")
	public String joininOK(HttpServlet request, Model model, Customer customer) {
//		db에 내용 추가.
		log.info("customer: " + customer);
		return "redirect:loginOK";
	}
	
	
}
