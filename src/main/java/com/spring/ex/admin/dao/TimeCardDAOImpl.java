package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TimeCardVO;

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

	//출근하기
	@Override
	public int timeCardAttendanceOn(TimeCardVO vo) throws Exception {
		return sqlSession.insert(namespace + ".timeCardAttendanceOn", vo);
	}

	//퇴근하기
	@Override
	public int timeCardAttendanceOff(TimeCardVO vo) throws Exception {
		return sqlSession.update(namespace + ".timeCardAttendanceOff", vo);
	}

	@Override
	public List<TimeCardVO> getTimeCardCommand(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".getTimeCardCommand",map);
	}

	@Override
	public List<TimeCardVO> getTimeCardOutside(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".getTimeCardOutside",map);
	}

	@Override
	public List<TimeCardVO> getTimeCardTrip(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".getTimeCardTrip",map);
	}
	
	
}