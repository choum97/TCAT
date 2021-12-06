package com.spring.ex.admin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.ScheduleVO;

@Repository
public class TimeCardDAOImpl implements TimeCardDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.TimeCardMapper";

	@Override
	public int commandCenter() throws Exception {
		return sqlSession.selectOne(namespace + ".");
	}
	
}