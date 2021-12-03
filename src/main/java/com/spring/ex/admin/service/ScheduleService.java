package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.ScheduleVO;

@Service
public interface ScheduleService {
	
	//일정 출력
	public List<ScheduleVO> ScheduleList() throws Exception;
}