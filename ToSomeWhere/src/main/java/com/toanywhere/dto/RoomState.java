package com.toanywhere.dto;

import lombok.*;

@Setter
@Getter
@ToString
public class RoomState {

	private int roomIdx;	//FK, 객실idx
	private String state;	//객실 상태, "사용가능", "청소중", "사용불가"
	
}
