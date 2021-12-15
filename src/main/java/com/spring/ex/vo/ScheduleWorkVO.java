package com.spring.ex.vo;

public class ScheduleWorkVO {
	
	private int schedule_work_id;
	private int schedule_id;
	private int member_no;
	private String schedule_work_title;
	private String schedule_title;
	private String schedule_work_content;
	private String schedule_work_code;
	private Object schedule_work_day;
	public int getSchedule_work_id() {
		return schedule_work_id;
	}
	public void setSchedule_work_id(int schedule_work_id) {
		this.schedule_work_id = schedule_work_id;
	}
	public int getSchedule_id() {
		return schedule_id;
	}
	public void setSchedule_id(int schedule_id) {
		this.schedule_id = schedule_id;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getSchedule_work_title() {
		return schedule_work_title;
	}
	public void setSchedule_work_title(String schedule_work_title) {
		this.schedule_work_title = schedule_work_title;
	}
	public String getSchedule_title() {
		return schedule_title;
	}
	public void setSchedule_title(String schedule_title) {
		this.schedule_title = schedule_title;
	}
	public String getSchedule_work_content() {
		return schedule_work_content;
	}
	public void setSchedule_work_content(String schedule_work_content) {
		this.schedule_work_content = schedule_work_content;
	}
	public String getSchedule_work_code() {
		return schedule_work_code;
	}
	public void setSchedule_work_code(String schedule_work_code) {
		this.schedule_work_code = schedule_work_code;
	}
	public Object getSchedule_work_day() {
		return schedule_work_day;
	}
	public void setSchedule_work_day(Object schedule_work_day) {
		this.schedule_work_day = schedule_work_day;
	}
	
}