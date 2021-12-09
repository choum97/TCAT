package com.spring.ex.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.admin.service.NoticeService;
import com.spring.ex.admin.service.ScheduleService;
import com.spring.ex.admin.service.TimeCardService;
import com.spring.ex.admin.service.VacationRequestService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.ScheduleVO;
import com.spring.ex.vo.TimeCardVO;

//author 김요한
@Controller
public class MainController {
	@Inject NoticeService serviceNotice;
	@Inject ScheduleService serviceSchedule;
	@Inject TimeCardService serviceTimeCard;
	@Inject VacationRequestService serviceVacation;
	
	@RequestMapping (value = "/main", method = RequestMethod.GET )
	public String main(NoticeVO vo, HttpServletRequest request, Model model) throws Exception {
		List<NoticeVO> List = serviceNotice.NoticeList();
		List<ScheduleVO> scheduleList = serviceSchedule.ScheduleList();
		int commandCenterCount = serviceTimeCard.getTimeCardCommandCount();
		int outsideCount = serviceTimeCard.getTimeCardOutsideCount();
		int tripCount = serviceTimeCard.getTimeCardTripCount();
		int vacationCount = serviceVacation.getVacationMainCount();
		
		model.addAttribute("NoticeList", List);
		model.addAttribute("ScheduleList", scheduleList);
		model.addAttribute("commandCenterList", commandCenterCount);
		model.addAttribute("outsideCount", outsideCount);
		model.addAttribute("tripCount", tripCount);
		model.addAttribute("vacationCount", vacationCount);
		
		return "main";
	}
	
	//출근
	@RequestMapping(value = "/timeCardAttendanceOn", method = RequestMethod.POST)
	public @ResponseBody int timeCardAttendanceOn(TimeCardVO vo,Model model, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		int result = 0;
		System.out.println(request.getParameter("member"));
		System.out.println(vo);
		//vo.setMember_id(request.getParameter("member"));
		int timeCardChcek = serviceTimeCard.timeCardAttendanceOn(vo);
		System.out.println(timeCardChcek);
		if (timeCardChcek != 0) {
			session.setAttribute("timeCardChcek", timeCardChcek);
			//System.out.println(member.getM_userId());
			result = 1;
		}
		return result;
	}
	
	//퇴근
	@RequestMapping(value = "/timeCardAttendanceOff", method = RequestMethod.POST)
	public @ResponseBody int timeCardAttendanceOut(TimeCardVO vo , HttpSession session, HttpServletResponse response) throws Exception {
		int result = 0;
		int timCardOff= serviceTimeCard.timeCardAttendanceOff(vo);
		if (timCardOff == 1) {
			session.removeAttribute("timeCardChcek");
			result = 1;
		}
		return result;
	}
	
}