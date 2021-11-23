package com.spring.ex.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.NoticeService;
import com.spring.ex.vo.NoticeVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class NoticeController {
	@Inject
	NoticeService service;
	
	@RequestMapping (value = "/noticeView", method = RequestMethod.GET )
	public String notice(HttpServletRequest request, Model model) throws Exception {
		
	
		
		int totalCount = service.getNoticeTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<NoticeVO> List = service.NoticeList(map);

		model.addAttribute("NoticeList", List);
		model.addAttribute("Paging", paging);
		
		return "information/notice";
	}
	

	
}
