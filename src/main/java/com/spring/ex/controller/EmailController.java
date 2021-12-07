package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmailController {
	
	@RequestMapping("/email")
	public String email() {
		return ("/email");
	}
	
	@RequestMapping("/email_request")
	public String email_request() {
		return ("/email_request");
	}
}
