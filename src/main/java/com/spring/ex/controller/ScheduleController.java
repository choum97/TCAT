package com.spring.ex.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.admin.service.ScheduleService;
import com.spring.ex.vo.ScheduleVO;

@Controller
public class ScheduleController {
	@Inject ScheduleService serviceSchedule;
	
	//author 김요한	
	@RequestMapping (value = "/scheduleView", method = RequestMethod.GET )
	public String scheduleView(HttpServletRequest request, Model model) throws Exception {
		List<ScheduleVO> scheduleList = serviceSchedule.ScheduleList();
		
		model.addAttribute("ScheduleList", scheduleList);
		
		return "schedule";
	}
	
	//author 김요한
	//게시글 조회 - 상세페이지 출력
	@RequestMapping(value = "/ScheduleDetailView", method = RequestMethod.GET)
	public @ResponseBody int ScheduleDetailView(Model model, HttpServletRequest request)  throws Exception {
		int result = 0;
		int schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		//int schedule_id = 2;
		ScheduleVO scheduleDetailView = serviceSchedule.ScheduleDetailView(schedule_id);
		
		if(scheduleDetailView != null) {
			result = 1;
		}
		System.out.println(scheduleDetailView.getSchedule_title());
		
		model.addAttribute("scheduleDetailView", scheduleDetailView);
		
		return result;
		
	}
}