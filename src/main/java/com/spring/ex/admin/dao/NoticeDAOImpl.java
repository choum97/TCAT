package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	//@Inject
	//private SqlSession sqlSession;
	//private static final String namespace = "com.spring.ex.NoticeMapper";
	
	//공지사항 출력
	@Override
	public List<NoticeVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return null;
	}
	
	//공지사항 등록
	
	//공지사항 수정
	
	//공지사항 삭제
	
	//공지사항 게시물 총 갯수
	
	//공지사항 게시글 내용
	
	//공지사항 검색
	
	//공지사항 검색 게시물 총 갯수
}