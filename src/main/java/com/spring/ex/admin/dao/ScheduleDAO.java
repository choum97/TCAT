package com.spring.ex.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.ScheduleVO;

@Repository
public interface ScheduleDAO {
	//일정 출력
	public List<ScheduleVO> ScheduleList() throws Exception;
	

}