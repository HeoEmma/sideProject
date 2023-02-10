package com.toanywhere.dto;

import java.sql.Date;

import lombok.*;

@Setter
@Getter
@ToString
// 가격 테이블 (객실)
public class Price {

	private int priceIdx;
	private String priceSeq;	//주말, 성수기, 준성수기
	private Date priceStartDate;	//시작일
	private Date priceEndDate;	//종료일
	private String reduceTarget; // 가격 감면 대상
	private float reduceRate; //가격 감면율
	private int reduceAmount; //가격 감면금액
	private String saleKind; //할인종류
	private int price; //가격
	private int roomIdx; //FK, 객실IDX
	
}
