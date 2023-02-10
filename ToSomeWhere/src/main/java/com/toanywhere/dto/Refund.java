package com.toanywhere.dto;

import java.sql.Timestamp;

import lombok.*;

@Setter
@Getter
@ToString
public class Refund {

	private int rfIdx;	//PK, 환불번호
	private int resIdx;	//FK, 예약번호
	private String cancel; //취소사유
	private String cancelInfo; //취소 상세사유
	private String depostor;	//예금주
	private String bank;	//환불은행
	private String accoung;	//환불계좌번호
	private int restPrice;	//차감금액
	private String restInfo; //차감사유
	private String refundPrice;	//환불금액
	private Timestamp calcleDate;	//취소일시
	private String remark;	//비고
	
}
