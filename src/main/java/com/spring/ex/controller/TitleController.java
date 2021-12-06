package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class TitleController {
	@RequestMapping ("/title")
	public String title() {
		return ("/title");
	}
}
