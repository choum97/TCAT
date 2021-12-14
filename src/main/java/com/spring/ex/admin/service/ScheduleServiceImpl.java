package com.spring.ex.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.ScheduleDAO;
import com.spring.ex.vo.ScheduleVO;
import com.spring.ex.vo.ScheduleWorkVO;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	
	@Inject
	private ScheduleDAO dao;

	//author 김요한
	//일정 출력
	@Override
	public List<ScheduleVO> ScheduleList() throws Exception {
		return dao.ScheduleList();
	}

	//일정 조회
	@Override
	public ScheduleVO ScheduleDetailView(int schedule_id) throws Exception {
		return dao.ScheduleDetailView(schedule_id);
	}
	
	//사원 Schedule Work 일정 작성
	@Override
	public int ScheduleWorkInsert(ScheduleWorkVO vo) throws Exception {
		return dao.ScheduleWorkInsert(vo);
	}

}