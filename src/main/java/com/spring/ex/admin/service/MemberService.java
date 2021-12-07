package com.spring.ex.admin.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.MemberVO;

@Service
public interface MemberService {
	
	
	//회원 로그인
	public MemberVO Login(MemberVO vo) throws Exception;
	
	//회원 로그아웃
	public void logout(HttpServletResponse response) throws Exception;
	
}