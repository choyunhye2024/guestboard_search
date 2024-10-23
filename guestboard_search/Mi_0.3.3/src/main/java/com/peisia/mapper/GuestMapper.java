package com.peisia.mapper;

import java.util.ArrayList;

import com.peisia.dto.GuestDto;
import com.peisia.dto.SearchDto;

public interface GuestMapper {
	ArrayList<GuestDto> getList(int limitIndex);

	int getCount(int limitIndex);

	ArrayList<GuestDto> listSearch(SearchDto dto);

	public GuestDto read(long bno);

	public void del(long bno);

	public void write(GuestDto dto);

	public void modify(GuestDto dto);

}
