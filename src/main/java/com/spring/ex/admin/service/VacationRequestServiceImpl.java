package com.spring.ex.admin.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.VacationRequestDAO;
import com.spring.ex.vo.VacationRequestVO;

//author 손호영
@Service
public class VacationRequestServiceImpl implements VacationRequestService {
	@Inject
	private VacationRequestDAO dao;
	//author 김요한
	//메인 휴가자 집계
	@Override
	public int getVacationMainCount() throws Exception {
		return dao.getVacationMainCount();
	}
	//휴가 리스트 출력
	
	@Override
	public List<Map<String, Object>> getVacationList() throws Exception {
		return dao.getVacationList();
	}
	
	///author 김요한
	
	
	@Override
	public List<VacationRequestVO> vacation2() throws Exception{
		return dao.vacation();
	}
}