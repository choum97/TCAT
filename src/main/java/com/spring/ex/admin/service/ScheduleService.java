package com.spring.ex.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.ScheduleVO;

//author 손호영
@Service
public interface ScheduleService {
	
	//일정 출력
	public List<ScheduleVO> ScheduleList() throws Exception;
	
	//일정 조회
	public ScheduleVO ScheduleDetailView(int schedule_id) throws Exception;
}