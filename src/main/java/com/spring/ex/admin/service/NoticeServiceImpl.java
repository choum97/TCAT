package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.NoticeDAO;
import com.spring.ex.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Inject
	private NoticeDAO dao;
	
	//공지사항 출력
	public List<NoticeVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return dao.NoticeList(map);
	}
	//공지사항 메인 한줄 출력
	public List<NoticeVO> NoticeList() throws Exception {
		return dao.NoticeList();
	}
	
	//공지사항 등록
	
	//공지사항 수정
	
	//공지사항 삭제
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception {
		return dao.NoticeTotalCount();
	}
	
	//공지사항 게시글 내용
	public NoticeVO NoticeDetailView(int notice_id) throws Exception {
		return dao.NoticeDetailView(notice_id);
	}
	
	//공지사항 검색
	public List<NoticeVO> NoticeSearchList(HashMap<String, Object> map) throws Exception {
		return dao.NoticeSearchList(map);
	}
	
	//공지사항 검색 게시물 총 갯수
	public int NoticeSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return dao.NoticeSearchTotalCount(searchMap);
	}

}