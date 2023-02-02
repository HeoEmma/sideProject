package com.toanywhere.dto;

import lombok.*;
import lombok.extern.slf4j.Slf4j;

@Getter
@Setter
@ToString
@Slf4j
public class Customer {
	
	String customerId;
	String name;
	String email;
	String password;

}
