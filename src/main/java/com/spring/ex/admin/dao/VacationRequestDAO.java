package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

//author 손호영
@Repository
public interface VacationRequestDAO {
	
	//메인 휴가자 집계
	public int getVacationMainCount() throws Exception;
	
}