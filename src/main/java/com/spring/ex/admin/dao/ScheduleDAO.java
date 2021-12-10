package com.spring.ex.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.ScheduleVO;

//author 손호영
@Repository
public interface ScheduleDAO {
	//author 김요한
	//일정 출력
	public List<ScheduleVO> ScheduleList() throws Exception;
	
	//일정 조회
	public ScheduleVO ScheduleDetailView(int schedule_id) throws Exception;
	// /author 김요한
}