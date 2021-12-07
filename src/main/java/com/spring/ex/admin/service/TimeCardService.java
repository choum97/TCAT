package com.spring.ex.admin.service;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.TimeCardVO;

@Service
public interface TimeCardService {
	
	public int getTimeCardCommandCount() throws Exception;
	
	public int getTimeCardOutsideCount() throws Exception;
	
	public int getTimeCardTripCount() throws Exception;
	
	//출근하기
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception;
	
	//퇴근하기
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception;
	
}