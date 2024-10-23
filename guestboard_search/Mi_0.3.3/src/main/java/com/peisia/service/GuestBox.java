package com.peisia.service;

import java.util.List;

import com.peisia.dto.GuestDto;

import lombok.Data;

@Data
public class GuestBox {

	private List<GuestDto> posts;
	private int count;

}
