package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

@Repository
public interface TimeCardDAO {
	public int getTimeCardCommandCount() throws Exception;
	
	public int getTimeCardOutsideCount() throws Exception;
	
	public int getTimeCardTripCount() throws Exception;

}