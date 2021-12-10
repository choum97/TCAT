package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TimeCardVO;

//author 빈현욱
@Repository
public interface TimeCardDAO {
	//메인 인원 카운트
	public int getTimeCardCommandCount() throws Exception;
	public int getTimeCardOutsideCount() throws Exception;
	public int getTimeCardTripCount() throws Exception;
	
	//출근하기
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception;
	
	//퇴근하기
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception;
	
	//인원 리스트 출력
	public List<TimeCardVO> getTimeCardCommand(HashMap<String, Integer> map) throws Exception;
	public List<TimeCardVO> getTimeCardOutside(HashMap<String, Integer> map) throws Exception;
	public List<TimeCardVO> getTimeCardTrip(HashMap<String, Integer> map) throws Exception;
	
	//근태기록 조회
	public List<TimeCardVO> timeCardList() throws Exception;

}