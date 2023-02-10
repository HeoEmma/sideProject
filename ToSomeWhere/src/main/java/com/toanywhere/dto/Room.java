package com.toanywhere.dto;

import lombok.*;

@Setter
@Getter
@ToString
// 객실 정보
public class Room {
	
	private int productManagerId;	//hostInfo 테이블과 연결
	private int roomIdx;	//idx_ dayoff/price/reserve/테이블에서 foreign key로 쓰임
	private String roomKind;	//객실 종류
	private String roomArea;	//객실 면적
	private int roomPeople;		//객실 최대 인원
	private String roomGuid;	//이용 안내
	private String roomMap;		//배치도(파일 경로)
	private String roomInfo;	//객실 상세 정보 (다른 테이블로 구성할 가능성 있음)
	
}
