package com.rp.finalp.mypage.model.vo;

import java.sql.Date;

public class InqBoard {
	private int inq_no;
	private String inq_title;
	private String inq_content;
	private Date inq_date;
	private int inq_writer;
	private String inq_reply;
	private int inq_tcate_id;
	private String inq_yn;
	
	public InqBoard() {}

	public InqBoard(int inq_no, String inq_title, String inq_content, Date inq_date, int inq_writer, String inq_reply,
			int inq_tcate_id, String inq_yn) {
		super();
		this.inq_no = inq_no;
		this.inq_title = inq_title;
		this.inq_content = inq_content;
		this.inq_date = inq_date;
		this.inq_writer = inq_writer;
		this.inq_reply = inq_reply;
		this.inq_tcate_id = inq_tcate_id;
		this.inq_yn = inq_yn;
	}

	public int getInq_no() {
		return inq_no;
	}

	public void setInq_no(int inq_no) {
		this.inq_no = inq_no;
	}

	public String getInq_title() {
		return inq_title;
	}

	public void setInq_title(String inq_title) {
		this.inq_title = inq_title;
	}

	public String getInq_content() {
		return inq_content;
	}

	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}

	public Date getInq_date() {
		return inq_date;
	}

	public void setInq_date(Date inq_date) {
		this.inq_date = inq_date;
	}

	public int getInq_writer() {
		return inq_writer;
	}

	public void setInq_writer(int inq_writer) {
		this.inq_writer = inq_writer;
	}

	public String getInq_reply() {
		return inq_reply;
	}

	public void setInq_reply(String inq_reply) {
		this.inq_reply = inq_reply;
	}

	public int getInq_tcate_id() {
		return inq_tcate_id;
	}

	public void setInq_tcate_id(int inq_tcate_id) {
		this.inq_tcate_id = inq_tcate_id;
	}

	public String getInq_yn() {
		return inq_yn;
	}

	public void setInq_yn(String inq_yn) {
		this.inq_yn = inq_yn;
	}

	@Override
	public String toString() {
		return "InqBoard [inq_no=" + inq_no + ", inq_title=" + inq_title + ", inq_content=" + inq_content
				+ ", inq_date=" + inq_date + ", inq_writer=" + inq_writer + ", inq_reply=" + inq_reply
				+ ", inq_tcate_id=" + inq_tcate_id + ", inq_yn=" + inq_yn + "]";
	}
	
}
