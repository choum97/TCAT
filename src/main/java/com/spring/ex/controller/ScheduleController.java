package com.spring.ex.controller;


import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.admin.service.ScheduleService;
import com.spring.ex.vo.ScheduleVO;
import com.spring.ex.vo.ScheduleWorkVO;

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
	//일정 조회 페이지
	@RequestMapping(value = "/ScheduleDetailMainView", method = RequestMethod.GET)
	public String ScheduleDetailMainView(Model model, HttpServletRequest request)  throws Exception {
		int schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		model.addAttribute("scheduleDetailView", serviceSchedule.ScheduleDetailView(schedule_id));
		return "modal/detailModalMainView";
	}
	
	//일정 등록 페이지
	@RequestMapping(value = "/ScheduleDetailView", method = RequestMethod.GET)
	public String ScheduleDetailView(Model model, HttpServletRequest request)  throws Exception {
		int schedule_id = Integer.parseInt(request.getParameter("schedule_id"));
		model.addAttribute("scheduleDetailView", serviceSchedule.ScheduleDetailView(schedule_id));
		return "modal/detailModalView";
	}
	
	/*
	//사원 Schedule Work 일정 작성
	@RequestMapping(value = "/ScheduleWorkInsert", method = RequestMethod.POST)
	public @ResponseBody int ScheduleWorkInsert(ScheduleWorkVO vo)  throws Exception {
		int result = serviceSchedule.ScheduleWorkInsert(vo);		
		return result;
	}
	*/
	
	//사원 Schedule Work 일정 작성
	@RequestMapping(value = "/ScheduleWorkInsert", method = RequestMethod.POST)
	public void ScheduleWorkInsert(ScheduleWorkVO vo, HttpServletResponse response)  throws Exception {
		int result = serviceSchedule.ScheduleWorkInsert(vo);
		
		if (result == 1) {
			//session.setAttribute("member", vo);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록 되었습니다.');");
			out.println("opener.location.reload();");
			out.println("window.close();");
			out.println("</script>");
			out.close();
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록 실패 : 관리자에게 문의해주세요.');");
			out.println("window.close();");
			out.println("</script>");
			out.close();
		}
		
	}
}