package com.toanywhere.dto;

import java.sql.Date;

import lombok.*;

@Getter
@Setter
@ToString
public class Reservation {

	private int resIdx;	//PK, 예약번호
	private String resState;	//예약 상태(완료, 대기, 취소)
	private Date resStartDate;
	private Date resEndDate;
//	예약자 정보
	private int customerId; //FK, 예약자 정보
	private String phone;	//예약자 연락처
	private String nationality;	//국적
	private String memberNumber;	//숙박인원
//	객실 정보
	private int roomIdx;	//FK, 객실idx
	
}
