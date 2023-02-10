package com.toanywhere.dto;

import java.sql.Date;

import lombok.*;

@Getter
@Setter
@ToString
public class Reservation {

	private int resIdx;
	private int roomIdx;	//FK, 객실idx
	private String resState;	//예약 상태(완료, 대기, 취소)
	private Date resStartDate;
	private Date resEndDate;
	private int customerId; //FK, 예약자 정보
	
}
