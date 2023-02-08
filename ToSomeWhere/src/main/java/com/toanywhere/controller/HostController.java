package com.toanywhere.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HostController {
	
//	host login page
	@RequestMapping("/host")
	public String hostLogin() {
		log.info("hostLogin() in HostController class");
		return "host/registration/hostLogin";
	}
	
//	to host home
	@RequestMapping("/host/home")
	public String host() {
		log.info("host() in HostController class");
		return "host/registration/hostHome";
	}
	
//	to join in
	@RequestMapping("registrationHost")
	public String registrationHost() {
		log.info("registrationHost() in HostController class");
		return "host/registration/registrationHost";
	}

}
