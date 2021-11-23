package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	//공지사항 게시글 리스트
	@RequestMapping (value = "/noticeView", method = RequestMethod.GET )
	public String notice(HttpServletRequest request, Model model) throws Exception {
		int totalCount = service.NoticeTotalCount();
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
	
	//공지사항 상세페이지
	@RequestMapping (value = "/noticeDetailView", method = RequestMethod.GET )
	public String noticeDetail(HttpServletRequest request, Model model, HttpServletResponse response) throws Exception {
		int notice_id = Integer.parseInt(request.getParameter("notice_id"));
		NoticeVO content = service.NoticeDetailView(notice_id);
		
		if (content == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		model.addAttribute("content", content);
		
		return "information/noticeDetailView";
	}
	
	//공지사항 검색
	@RequestMapping(value = "/noticeSearch", method = RequestMethod.GET)
	public String NoticeSearchView(NoticeVO vo, HttpServletRequest request, Model model) throws Exception {
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		
		HashMap<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("SearchType", searchType);
		searchMap.put("Keyword", keyword);
		
		int totalCount = service.NoticeSearchTotalCount(searchMap);
		System.out.println(totalCount);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("SearchType", searchType);
		map.put("Keyword", keyword);
		
		List<NoticeVO> List = service.NoticeSearchList(map);
		System.out.println(List);
		
		model.addAttribute("NoticeList", List);
		model.addAttribute("Paging", paging);
		model.addAttribute("search", searchType);
		model.addAttribute("keyword", keyword);
		
		return "information/notice";
	}

	
}
