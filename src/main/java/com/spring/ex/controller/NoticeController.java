package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {

	@RequestMapping (value = "/noticeView")
	public String notice() {
		return "information/notice";
	}
	

	
}
