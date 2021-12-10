package com.spring.ex.vo;

//author 손호영
public class VacationRequestVO {
	private int vacation_id;
	private String member_id;
	private Object vacation_start_day;
	private Object vacation_end_day;
	private String vacation_kind;
	private String vacation_reason;
	private int vacation_ok;
	public int getVacation_id() {
		return vacation_id;
	}
	public void setVacation_id(int vacation_id) {
		this.vacation_id = vacation_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Object getVacation_start_day() {
		return vacation_start_day;
	}
	public void setVacation_start_day(Object vacation_start_day) {
		this.vacation_start_day = vacation_start_day;
	}
	public Object getVacation_end_day() {
		return vacation_end_day;
	}
	public void setVacation_end_day(Object vacation_end_day) {
		this.vacation_end_day = vacation_end_day;
	}
	public String getVacation_kind() {
		return vacation_kind;
	}
	public void setVacation_kind(String vacation_kind) {
		this.vacation_kind = vacation_kind;
	}
	public String getVacation_reason() {
		return vacation_reason;
	}
	public void setVacation_reason(String vacation_reason) {
		this.vacation_reason = vacation_reason;
	}
	public int getVacation_ok() {
		return vacation_ok;
	}
	public void setVacation_ok(int vacation_ok) {
		this.vacation_ok = vacation_ok;
	}


}