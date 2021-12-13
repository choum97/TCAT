package com.spring.ex.admin.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.VacationRequestVO;

//author 손호영
@Repository
public class VacationRequestDAOImpl implements VacationRequestDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static String namespace = "com.spring.ex.VacationRequestMapper";
	//private static final String namespace = "com.spring.ex.VacationRequestMapper";
	
	//author 김요한
	//메인 휴가자 집계
	@Override
	public int getVacationMainCount() throws Exception {
		return sqlSession.selectOne(namespace + ".getVacationMainCount");
	}
	
	
	
	//휴가 리스트 출력
	@Override
	public List<Map<String, Object>> getVacationList() throws Exception {
		return sqlSession.selectList(namespace + ".getVacationList");
	}
	
	
	///author 김요한
	
	
	//휴가 리스트 출력
	
	@Override
	public List<VacationRequestVO> vacation() throws Exception{
		return sqlSession.selectList(namespace + ".vacation");
	}
	
}