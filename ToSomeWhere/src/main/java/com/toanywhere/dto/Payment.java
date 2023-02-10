package com.toanywhere.dto;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.*;

@Setter
@Getter
@ToString
public class Payment {
	
	private int paymentIdx;	//PK,결제번호
	private int resIdx;	//FK, 예약번호
	private String isPaied;	//결제여부
	private String wayToPay;	//결제방법 ("신용카드", "방문결제", "현금")
	private String bank;	//결제은행
	private String approval;	//승인번호
	private Timestamp payDate;	//결제일시

}
