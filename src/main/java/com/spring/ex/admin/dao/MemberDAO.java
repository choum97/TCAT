package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public interface MemberDAO {
	
	//author 김요한
	//회원 로그인
	public MemberVO Login(MemberVO vo) throws Exception;
	
	// /author 김요한
	
}