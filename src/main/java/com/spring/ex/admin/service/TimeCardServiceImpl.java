package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.TimeCardDAO;
import com.spring.ex.vo.TimeCardVO;

@Service
public class TimeCardServiceImpl implements TimeCardService {
	@Inject
	private TimeCardDAO dao;

	//author 김요한
	@Override
	public int getTimeCardCommandCount() throws Exception {
		return dao.getTimeCardCommandCount();
	}

	@Override
	public int getTimeCardOutsideCount() throws Exception {
		return dao.getTimeCardOutsideCount();
	}

	@Override
	public int getTimeCardTripCount() throws Exception {
		return dao.getTimeCardTripCount();
	}

	//출근하기
	@Override
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception {
		return dao.timeCardAttendanceOn(vo);
	}

	//퇴근하기
	@Override
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception {
		return dao.timeCardAttendanceOff(vo);
	}

	@Override
	public List<Map<String, Object>> getTimeCardCommand(HashMap<String, Integer> map) throws Exception {
		return dao.getTimeCardCommand(map);
	}

	@Override
	public List<TimeCardVO> getTimeCardOutside(HashMap<String, Integer> map) throws Exception {
		return dao.getTimeCardOutside(map);
	}

	@Override
	public List<TimeCardVO> getTimeCardTrip(HashMap<String, Integer> map) throws Exception {
		return dao.getTimeCardTrip(map);
	}
	///author 김요한
	
	//근태기록 조회
	@Override
	public List timeCardList() throws Exception {	  
		return dao.timeCardList();
	}
	
}