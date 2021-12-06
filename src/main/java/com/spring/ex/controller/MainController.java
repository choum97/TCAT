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
import com.spring.ex.admin.service.TimeCardService;
import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.ScheduleVO;

@Controller
public class MainController {
	@Inject NoticeService serviceNotice;
	@Inject ScheduleService serviceSchedule;
	@Inject TimeCardService serviceTimeCard;
	
	@RequestMapping (value = "/main", method = RequestMethod.GET )
	public String main(NoticeVO vo, HttpServletRequest request, Model model) throws Exception {
		List<NoticeVO> List = serviceNotice.NoticeList();
		List<ScheduleVO> scheduleList = serviceSchedule.ScheduleList();
		int commandCenterCount = serviceTimeCard.getTimeCardCommandCount();
		int outsideCount = serviceTimeCard.getTimeCardOutsideCount();
		int tripCount = serviceTimeCard.getTimeCardTripCount();
		
		model.addAttribute("NoticeList", List);
		model.addAttribute("ScheduleList", scheduleList);
		model.addAttribute("commandCenterList", commandCenterCount);
		model.addAttribute("outsideCount", outsideCount);
		model.addAttribute("tripCount", tripCount);
		
		return "main";
	}
	

	
}