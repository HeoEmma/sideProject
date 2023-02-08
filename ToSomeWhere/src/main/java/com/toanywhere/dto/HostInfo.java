package com.toanywhere.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Setter
@Getter
@ToString
public class HostInfo {
	
	private int hostId;
	private String nickname;	//회원가입시 사용자가 입력
	private String email;		//외원가입시 사용자강 입력 (not null)
	private String password;	//회원가입시 사용자가 입력 (not null)
	private int productManagerId;	//
	
}

/*
 * HostInfo (table, host 정보)
 * Product (table, 장소(개별) 정보) 
 * ProductManagerInfo (table, host는 한 명인데, 여러 건물을 사용하는 경우, 프로덕트 매니저를 지정하여 사용할 수 있다. 이것을 관리하기 위한 테이블)
 */
