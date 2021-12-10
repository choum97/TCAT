package com.spring.ex.admin.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.MemberMapper";

	// author 김요한
	// 회원 로그인
	@Override
	public MemberVO Login(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".MemberLogin", vo);
	}

	// /author 김요한
	
	
	// author 손호영
	// 로그인 검사
	@Override
	public MemberVO login(String id) throws Exception {
		return sqlSession.selectOne(namespace + ".login", id);
	}
	// author 손호영
	// 로그인 접속일자 변경
	@Override
	public int update_log(String id) throws Exception {
		return sqlSession.update(namespace + ".update_log", id);
	}
	// author 손호영
	// 비밀번호변경
	@Override
	public int update_pw(MemberVO vo) throws Exception {
		return sqlSession.update(namespace + ".update_pw", vo);
	}

	// author 손호영
	// 아이디 중복 검사
	@Override
	public int check_id(String id) throws Exception {
		return sqlSession.selectOne(namespace + ".check_id", id);
	}

	
}