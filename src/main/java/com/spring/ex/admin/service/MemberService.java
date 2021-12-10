package com.spring.ex.admin.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.MemberVO;

@Service
public interface MemberService {

	// author 김요한
	// 회원 로그인
	public MemberVO Login(MemberVO vo) throws Exception;

	// 회원 로그아웃
	public void logout(HttpServletResponse response) throws Exception;

	/// author 김요한

	public MemberVO login(MemberVO vo, HttpServletResponse response) throws Exception;

	// 이메일발송
	public void sendEmail(MemberVO vo, String div) throws Exception;

	// 비밀번호찾기
	public void find_pw(HttpServletResponse response, MemberVO vo) throws Exception;

	// 아이디 중복검사
	public void check_id(String id, HttpServletResponse response) throws Exception;



}