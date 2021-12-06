package com.spring.ex.admin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.ScheduleVO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.ScheduleMapper";
	
	//공지사항 출력
	@Override
	public List<ScheduleVO> ScheduleList() throws Exception {
		return sqlSession.selectList(namespace + ".ScheduleList");
	}
	
}