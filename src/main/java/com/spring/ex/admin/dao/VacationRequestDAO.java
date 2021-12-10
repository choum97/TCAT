package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface VacationRequestDAO {
	
	//author 김요한
	//메인 휴가자 집계
	public int getVacationMainCount() throws Exception;
	
	///author 김요한
}