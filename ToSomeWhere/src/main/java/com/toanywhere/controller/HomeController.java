package com.toanywhere.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@RequestMapping("/book")
	public String book() {
		log.info("book() in HomeController class");
		return "/booking/book";
	}

}
