package com.spring.ex.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.NoticeService;
import com.spring.ex.admin.service.ScheduleService;
import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.ScheduleVO;

@Controller
public class ScheduleController {
	@Inject ScheduleService serviceSchedule;
	
	@RequestMapping (value = "/scheduleView", method = RequestMethod.GET )
	public String scheduleView(HttpServletRequest request, Model model) throws Exception {
		List<ScheduleVO> scheduleList = serviceSchedule.ScheduleList();
		
		model.addAttribute("ScheduleList", scheduleList);
		
		return "schedule";
	}
	

	
}