package com.spring.ex.vo;

public class TimeCardVO {
	
	private int time_card_id;
	private String member_id;
	private String work_pattern;
	private String work_place;
	private Object work_day_start;
	private Object work_day_end;
	private String work_note;
	public int getTime_card_id() {
		return time_card_id;
	}
	public void setTime_card_id(int time_card_id) {
		this.time_card_id = time_card_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getWork_pattern() {
		return work_pattern;
	}
	public void setWork_pattern(String work_pattern) {
		this.work_pattern = work_pattern;
	}
	public String getWork_place() {
		return work_place;
	}
	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}
	public Object getWork_day_start() {
		return work_day_start;
	}
	public void setWork_day_start(Object work_day_start) {
		this.work_day_start = work_day_start;
	}
	public Object getWork_day_end() {
		return work_day_end;
	}
	public void setWork_day_end(Object work_day_end) {
		this.work_day_end = work_day_end;
	}
	public String getWork_note() {
		return work_note;
	}
	public void setWork_note(String work_note) {
		this.work_note = work_note;
	}


}