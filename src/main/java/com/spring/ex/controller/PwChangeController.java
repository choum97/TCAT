package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PwChangeController {
	
	@RequestMapping ("/pw_change")
	public String pw_change() {
		return ("/pw_change");
	}
}
