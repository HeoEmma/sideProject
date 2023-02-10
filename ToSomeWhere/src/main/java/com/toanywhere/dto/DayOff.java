package com.toanywhere.dto;

import java.sql.Date;

import lombok.*;

@Getter
@Setter
@ToString
//휴무일 테이블
public class DayOff {
	
	private int offIdx;
	private String offSep; //구분(정기, 수동)
	private Date offStartDate;
	private Date offEndDate;
	private String roomIdx; //객실

}
