package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.NoticeService;
import com.spring.ex.vo.NoticeVO;

@Controller
public class MainController {
	@Inject
	NoticeService service;

	@RequestMapping (value = "/main", method = RequestMethod.GET )
	public String main(NoticeVO vo, HttpServletRequest request, Model model) throws Exception {
		List<NoticeVO> List = service.NoticeList();
		model.addAttribute("NoticeList", List);
		
		return "main";
	}
	

	
}
