package com.spring.ex.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.admin.service.MemberService;
import com.spring.ex.vo.MemberVO;

@Controller
public class MemberController {
	@Inject
	private MemberService service;

	// author 김요한
	// 로그인 실행
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody int Login(MemberVO vo, Model model, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		int result = 0;
		System.out.println("로그인 웹 요청 ID : " + request.getParameter("member_id"));
		System.out.println("로그인 웹 요청 PW : " + request.getParameter("member_pw"));

		MemberVO member = service.Login(vo);

		if (member != null) {
			session.setAttribute("member", member);

			result = 1;
		}
		return result;
	}

	// author 김요한
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(HttpSession session, HttpServletResponse response) throws Exception {
		session.invalidate();
		service.logout(response);
	}

	// author 손호영
	//비밀번호 찾기 폼
		@RequestMapping(value = "/find_pw")
		public String find_pw() throws Exception{
			return "/find_pw";
		}
	// author 손호영
	// 비밀번호 찾기 폼
	@RequestMapping(value = "/find_pw", method = RequestMethod.POST)
	public void find_pw(@ModelAttribute MemberVO vo, HttpServletResponse response) throws Exception {
		service.find_pw(response, vo);
	}

}
