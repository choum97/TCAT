package com.spring.ex.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.ScheduleVO;
import com.spring.ex.vo.ScheduleWorkVO;

@Service
public interface ScheduleService {
	//author 김요한
	//일정 출력
	public List<ScheduleVO> ScheduleList() throws Exception;
	
	//일정 조회
	public ScheduleVO ScheduleDetailView(int schedule_id) throws Exception;
	
	//사원 Schedule Work 일정 작성
	public int ScheduleWorkInsert(ScheduleWorkVO vo) throws Exception;
}