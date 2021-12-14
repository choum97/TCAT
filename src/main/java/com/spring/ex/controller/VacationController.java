package com.spring.ex.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.admin.service.VacationRequestService;
import com.spring.ex.vo.VacationRequestVO;

//author 손호영
@Controller
public class VacationController {
	
	@Inject
	VacationRequestService service;
	
	// 휴가관리
	@RequestMapping(value = "/vacation", method=RequestMethod.GET)
	public void vacation(Model model) throws Exception {
		List<VacationRequestVO> list = null;
		list = service.vacation2();
	
		model.addAttribute("vacation", list);
		
		
		
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
	@RequestMapping(value = "/vacation_view", method = RequestMethod.GET)
	public void vacation_view(@RequestParam("vacation_id") int vacation_id, Model model) throws Exception {
		VacationRequestVO vo = service.vacation_view(vacation_id);
		model.addAttribute("vacation_view", vo);
	}
	
	
	
}
