package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TimeCardDAOImpl implements TimeCardDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.TimeCardMapper";

	@Override
	public int getTimeCardCommandCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTimeCardCommandCount");
	}

	@Override
	public int getTimeCardOutsideCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTimeCardOutsideCount");
	}

	@Override
	public int getTimeCardTripCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getTimeCardTripCount");
	}
	
	
}