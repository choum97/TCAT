package com.spring.ex.vo;

import java.sql.Date;

public class MemberVO {

	private int member_no;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_class;
	private Date member_join;
	private int member_access_right;
	private Date log_date;
	private String approval_status;
	private String approval_key;

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_class() {
		return member_class;
	}

	public void setMember_class(String member_class) {
		this.member_class = member_class;
	}

	public Date getMember_join() {
		return member_join;
	}

	public void setMember_join(Date member_join) {
		this.member_join = member_join;
	}

	public int getMember_access_right() {
		return member_access_right;
	}

	public void setMember_access_right(int member_access_right) {
		this.member_access_right = member_access_right;
	}

	public Date getLog_date() {
		return log_date;
	}

	public void setLog_date(Date log_date) {
		this.log_date = log_date;
	}

	public String getApproval_status() {
		return approval_status;
	}

	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}

	public String getApproval_key() {
		return approval_key;
	}

	public void setApproval_key(String approval_key) {
		this.approval_key = approval_key;
	}

}