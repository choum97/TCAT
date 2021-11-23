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
	
	//공지사항 등록
	
	//공지사항 수정
	
	//공지사항 삭제
	
	//공지사항 게시물 총 갯수
	
	//공지사항 게시글 내용
	
	//공지사항 검색
	
	//공지사항 검색 게시물 총 갯수
	public int getNoticeTotalCount() throws Exception {
		return dao.getNoticeTotalCount();
	}
}