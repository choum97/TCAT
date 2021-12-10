package com.spring.ex.vo;

public class NoticeVO {
	private int notice_id;
	private String title;
	private String content;
	private Object reg_date;
	
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Object getReg_date() {
		return reg_date;
	}
	public void setReg_date(Object reg_date) {
		this.reg_date = reg_date;
	}
	

}