package com.spring.ex.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.TimeCardDAO;
import com.spring.ex.admin.dao.VacationRequestDAO;

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
	///author 김요한
	
}