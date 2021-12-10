package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//author 손호영
@Controller
public class EmailController {
	
	//이메일 적어서 인증메일 발송페이지
	@RequestMapping("/email_request")
	public String email_request() {
		return ("/email_request");
	}
	
	//인증번호를 받고 입력하는 페이지
	@RequestMapping("/email")
	public String email() {
		return ("/email");
	}
	
	
	//인증번호가 맞으면 비밀번호를 변경하는 페이지
	@RequestMapping ("/pw_change")
	public String pw_change() {
		return ("/pw_change");
	}
}
