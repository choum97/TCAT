package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TimeCardVO;

@Repository
public interface TimeCardDAO {
	public int getTimeCardCommandCount() throws Exception;
	
	public int getTimeCardOutsideCount() throws Exception;
	
	public int getTimeCardTripCount() throws Exception;
	
	//출근하기
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception;
	
	//퇴근하기
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception;

}