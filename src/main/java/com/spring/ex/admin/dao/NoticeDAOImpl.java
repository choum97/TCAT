package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.NoticeMapper";
	
	//공지사항 출력
	@Override
	public List<NoticeVO> NoticeList(HashMap<String, Integer> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeListView", map);
	}
	
	//공지사항 등록
	
	//공지사항 수정
	
	//공지사항 삭제
	
	//공지사항 게시물 총 갯수
	public int NoticeTotalCount() throws Exception {
		return sqlSession.selectOne(namespace + ".NoticeTotalCount");
	}
	
	//공지사항 게시글 내용
	public NoticeVO NoticeDetailView(int notice_id) throws Exception {
		return sqlSession.selectOne(namespace + ".NoticeDetailView", notice_id);
	}
	
	//공지사항 검색
	public List<NoticeVO> NoticeSearchList(HashMap<String, Object> map) throws Exception {
		return sqlSession.selectList(namespace + ".NoticeSearchView", map);
	}
	
	//공지사항 검색 게시물 총 갯수
	public int NoticeSearchTotalCount(HashMap<String, String> searchMap) throws Exception {
		return sqlSession.selectOne(namespace + ".NoticeSearchTotalCount", searchMap);
	}

}