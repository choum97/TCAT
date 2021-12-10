package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//author 빈현욱
@Controller
public class TestController {

	
	@RequestMapping ("/myInfo")
	public String myInfo() {
		return "myInfo";
	}
	
	@RequestMapping ("/update_myInfo")
	public String update_myInfo() {
		return "update_myInfo";
	}	
}
