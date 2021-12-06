package com.spring.ex.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.TimeCardDAO;

@Service
public class TimeCardServiceImpl implements TimeCardService {
	@Inject
	private TimeCardDAO dao;

	@Override
	public int getTimeCardCommandCount() throws Exception {
		return dao.getTimeCardCommandCount();
	}

	@Override
	public int getTimeCardOutsideCount() throws Exception {
		return dao.getTimeCardOutsideCount();
	}

	@Override
	public int getTimeCardTripCount() throws Exception {
		return dao.getTimeCardTripCount();
	}
	
}