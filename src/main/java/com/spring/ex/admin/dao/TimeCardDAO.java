package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TimeCardVO;

@Repository
public interface TimeCardDAO {
	//author 김요한
	//메인 인원 카운트
	public int getTimeCardCommandCount() throws Exception;
	public int getTimeCardOutsideCount() throws Exception;
	public int getTimeCardTripCount() throws Exception;
	
	//출근하기
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception;
	
	//퇴근하기
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception;
	
	//인원 리스트 출력
	public List<Map<String, Object>> getTimeCardCommand(HashMap<String, Integer> map) throws Exception;
	public List<TimeCardVO> getTimeCardOutside(HashMap<String, Integer> map) throws Exception;
	public List<TimeCardVO> getTimeCardTrip(HashMap<String, Integer> map) throws Exception;
	////author 김요한
	
	//근태기록 조회
	public List<TimeCardVO> timeCardList() throws Exception;

}