package com.peisia.service;

import org.springframework.ui.Model;

import com.peisia.dto.GuestDto;

public interface GuestService {
	public Model getList(Model m, int currentPage);

	public Model listSearch(Model model, int currentPage, String search);

	public GuestDto read(long bno);

	public void del(long bno);

	public void write(GuestDto dto);

	public void modify(GuestDto dto);

}
