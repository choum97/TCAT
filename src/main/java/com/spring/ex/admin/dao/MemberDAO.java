package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public interface MemberDAO {

	// author 김요한
	// 회원 로그인
	public MemberVO Login(MemberVO vo) throws Exception;

	// /author 김요한

	// 로그인 검사
	public MemberVO login(String id) throws Exception;

	// 비밀번호 변경
	public int update_pw(MemberVO vo) throws Exception;

	// 로그인 접속일자 변경

	public int update_log(String id) throws Exception;

	// 아이디 중복 검사
	public int check_id(String id) throws Exception;

	
}