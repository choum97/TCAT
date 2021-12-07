package com.spring.ex.admin.service;

import org.springframework.stereotype.Service;

@Service
public interface VacationRequestService {
	//메인 휴가자 집계
	public int getVacationMainCount() throws Exception;
	
}