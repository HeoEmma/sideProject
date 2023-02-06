package com.toanywhere.dto;

import lombok.*;
import lombok.extern.slf4j.Slf4j;

@Getter
@Setter
@ToString
public class CustomerInfo {
	
	int customerId;
	String id;
	String name;
	String email;
	String password;

}
