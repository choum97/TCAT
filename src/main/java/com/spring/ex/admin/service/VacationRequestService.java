package com.spring.ex.admin.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.VacationRequestVO;

//author 손호영
@Service
public interface VacationRequestService {
	//author 김요한
	//메인 휴가자 집계
	public int getVacationMainCount() throws Exception;
	//휴가 리스트 출력
	public List<Map<String, Object>> getVacationList() throws Exception;
	
	
	public List<VacationRequestVO> vacation2() throws Exception;
	///author 김요한
	

	//author 손호영
	//휴가 리스트 출력
	// 게시물 조회
	public VacationRequestVO vacation_view(int vacation_id) throws Exception;
}