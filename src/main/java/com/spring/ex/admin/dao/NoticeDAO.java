package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.NoticeVO;

//author 김요한
@Repository
public interface NoticeDAO {
	//author 김요한
	//공지사항 출력
	public List<NoticeVO> NoticeList(HashMap<String, Integer> map) throws Exception;
	
	//공지사항 메인 한줄 출력
	public List<NoticeVO> NoticeList() throws Exception;
	
	//공지사항 등록
	
	//공지사항 수정
	
	//공지사항 삭제
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception;
	
	//공지사항 게시글 내용
	public NoticeVO NoticeDetailView(int notice_id) throws Exception;
	
	//공지사항 검색
	public List<NoticeVO> NoticeSearchList(HashMap<String, Object> map) throws Exception;
	
	//공지사항 검색 게시물 총 갯수
	public int NoticeSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
	
}