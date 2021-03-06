package com.spring.ex.admin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.ScheduleVO;
import com.spring.ex.vo.ScheduleWorkVO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.ScheduleMapper";
	
	//author 김요한
	//일정 출력
	@Override
	public List<ScheduleVO> ScheduleList() throws Exception {
		return sqlSession.selectList(namespace + ".ScheduleList");
	}

	//일정 조회
	@Override
	public ScheduleVO ScheduleDetailView(int schedule_id) throws Exception {
		return sqlSession.selectOne(namespace + ".ScheduleDetailView", schedule_id);
	}

	//사원 Schedule Work 일정 작성
	@Override
	public int ScheduleWorkInsert(ScheduleWorkVO vo) throws Exception {
		return sqlSession.insert(namespace + ".ScheduleWorkInsert", vo);
	}
	
	
	///author 김요한
	
}