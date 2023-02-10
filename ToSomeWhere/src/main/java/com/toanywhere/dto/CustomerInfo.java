package com.toanywhere.dto;

import lombok.*;
import lombok.extern.slf4j.Slf4j;

@Getter
@Setter
@ToString
public class CustomerInfo {
	
	private int customerId;
	private String id;
	private String name;
	private String email;
	private String password;

}
