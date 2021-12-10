package com.spring.ex.controller;

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
import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.TimeCardVO;


@Controller
public class MainController {
	@Inject
	NoticeService serviceNotice;
	@Inject
	ScheduleService serviceSchedule;
	@Inject
	TimeCardService serviceTimeCard;
	@Inject
	VacationRequestService serviceVacation;
	
	//author 김요한
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(NoticeVO vo, HttpServletRequest request, Model model) throws Exception {
		model.addAttribute("NoticeList",  serviceNotice.NoticeList());						//한줄공지사항
		
		model.addAttribute("ScheduleList", serviceSchedule.ScheduleList()); 				//일정출력
		
		model.addAttribute("timeCardList", serviceTimeCard.getTimeCardCommand());			//인원 리스트 출력 - 본사 외근 출장
		model.addAttribute("vacationList", serviceVacation.getVacationList());				//인원 리스트 출력 - 휴가자
		
		model.addAttribute("commandCenterList",  serviceTimeCard.getTimeCardCommandCount());//본사 인원 수
		model.addAttribute("outsideCount", serviceTimeCard.getTimeCardOutsideCount());		//외근 인원 수
		model.addAttribute("tripCount", serviceTimeCard.getTimeCardTripCount());			//출장 인원 수
		model.addAttribute("vacationCount", serviceVacation.getVacationMainCount());		//휴가 인원수

		return "main";
	}

	// 출근
	@RequestMapping(value = "/timeCardAttendanceOn", method = RequestMethod.POST)
	public @ResponseBody int timeCardAttendanceOn(TimeCardVO vo, Model model, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		int result = 0;
		
		int timeCardChcek = serviceTimeCard.timeCardAttendanceOn(vo);
		if (timeCardChcek != 0) {
			session.setAttribute("timeCardChcek", timeCardChcek);
			result = 1;
		}
		return result;
	}

	// 퇴근
	@RequestMapping(value = "/timeCardAttendanceOff", method = RequestMethod.POST)
	public @ResponseBody int timeCardAttendanceOut(TimeCardVO vo, HttpSession session, HttpServletResponse response) throws Exception {
		int result = 0;
		int timCardOff = serviceTimeCard.timeCardAttendanceOff(vo);
		if (timCardOff == 1) {
			session.removeAttribute("timeCardChcek");
			result = 1;
		}
		return result;
	}
	// /author 김요한

}