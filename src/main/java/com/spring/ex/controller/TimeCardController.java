package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.TimeCardService;
import com.spring.ex.vo.TimeCardVO;

//author 빈현욱
@Controller
public class TimeCardController {
	
	@Inject
	private TimeCardService timecardService;
	
	//근태기록 조회
	 @RequestMapping(value = "/timeCardList", method = RequestMethod.GET)
	 public void timeCardList(Model model) throws Exception {
		 
		 List<TimeCardVO> timeCardList = null;
		 timeCardList = timecardService.timeCardList();
		 model.addAttribute("timeCardList", timeCardList);
		 
	 }
	 
	
	/*
	 * @RequestMapping ("/timeCardList") public String test1() { return
	 * "timeCardList"; }
	 */

}
