package com.spring.ex.vo;

//author 김요한
public class ScheduleVO {
	/*
	 * 일정 번호
	 * 사원 아이디
	 * 제목
	 * 내용
	 * 시작일
	 * 종료일
	 * 공유여부
	 * 일정색상 
	 */
	
	private int schedule_id;
	private String member_id;
	private String schedule_title;
	private String schedule_content;
	private Object schedule_start_day;
	private Object schedule_end_day;
	private int schedule_share;
	private String schedule_color;
	
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getSchedule_title() {
		return schedule_title;
	}
	public void setSchedule_title(String schedule_title) {
		this.schedule_title = schedule_title;
	}
	public String getSchedule_content() {
		return schedule_content;
	}
	public void setSchedule_content(String schedule_content) {
		this.schedule_content = schedule_content;
	}
	public Object getSchedule_start_day() {
		return schedule_start_day;
	}
	public void setSchedule_start_day(Object schedule_start_day) {
		this.schedule_start_day = schedule_start_day;
	}
	public Object getSchedule_end_day() {
		return schedule_end_day;
	}
	public void setSchedule_end_day(Object schedule_end_day) {
		this.schedule_end_day = schedule_end_day;
	}
	public int getSchedule_share() {
		return schedule_share;
	}
	public void setSchedule_share(int schedule_share) {
		this.schedule_share = schedule_share;
	}
	public String getSchedule_color() {
		return schedule_color;
	}
	public void setSchedule_color(String schedule_color) {
		this.schedule_color = schedule_color;
	}


}