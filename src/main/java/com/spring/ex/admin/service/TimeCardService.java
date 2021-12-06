package com.spring.ex.admin.service;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.MemberVO;

@Service
public interface TimeCardService {
	
	public int getTimeCardCommandCount() throws Exception;
	
	public int getTimeCardOutsideCount() throws Exception;
	
	public int getTimeCardTripCount() throws Exception;
	
}