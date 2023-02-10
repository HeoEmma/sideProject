package com.toanywhere.dto;

import lombok.*;

@Setter
@Getter
@ToString
public class AddIncome {
	
	private int addIdx;
	private int addAmount;	//추가금액
	private String addReason;	//추가사유
	private String addMethod;	//추가방법
	private int resIdx;	//FK, 예약번호

}
