package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class VacationRequestDAOImpl implements VacationRequestDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.VacationRequestMapper";
	
	//author 김요한
	//메인 휴가자 집계
	@Override
	public int getVacationMainCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getVacationMainCount");
	}
	///author 김요한
	
	
}