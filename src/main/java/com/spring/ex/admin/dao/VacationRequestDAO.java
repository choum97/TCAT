package com.spring.ex.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.VacationRequestVO;

//author 손호영
@Repository
public interface VacationRequestDAO {
	
	//author 김요한
	//메인 휴가자 집계
	public int getVacationMainCount() throws Exception;
	
	
	//휴가 리스트 출력
	public List<Map<String, Object>> getVacationList() throws Exception;
	///author 김요한
	
	
	//author 손호영
	//휴가 리스트 출력
	public List<VacationRequestVO> vacation() throws Exception;
	
	
	//휴가 상세화면
	public VacationRequestVO vacation_view(int vacation_id) throws Exception;
	
}

