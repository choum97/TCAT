package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VacationController {
	
	// 휴가관리
	@RequestMapping("/vacation")
	public String vacation() {
		return ("/vacation");
	}
	
	// 휴가신청
	@RequestMapping("/vacation_application")
	public String vacation_application() {
		return ("/vacation_application");
	}
	
	
	// 휴가신청 수정
	@RequestMapping("/vacation_update")
	public String vacation_update() {
		return ("/vacation_update");
	}
	
	
	// 휴가신청 상세보기
	@RequestMapping("/vacation_view")
	public String vacation_view() {
		return ("/vacation_view");
	}
}
