package com.rp.finalp.admin.model.vo;

import java.sql.Date;

public class Contact implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private int inq_no;
	private String inq_title;
	private String inq_content;
	private Date inq_date;
	private String inq_writer;
	private int inq_reply;
	private int inq_tcate_id;
	
	public Contact() {}

	public Contact(int inq_no, String inq_title, String inq_content, Date inq_date, String inq_writer, int inq_reply,
			int inq_tcate_id) {
		super();
		this.inq_no = inq_no;
		this.inq_title = inq_title;
		this.inq_content = inq_content;
		this.inq_date = inq_date;
		this.inq_writer = inq_writer;
		this.inq_reply = inq_reply;
		this.inq_tcate_id = inq_tcate_id;
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

	public String getInq_writer() {
		return inq_writer;
	}

	public void setInq_writer(String inq_writer) {
		this.inq_writer = inq_writer;
	}

	public int getInq_reply() {
		return inq_reply;
	}

	public void setInq_reply(int inq_reply) {
		this.inq_reply = inq_reply;
	}

	public int getInq_tcate_id() {
		return inq_tcate_id;
	}

	public void setInq_tcate_id(int inq_tcate_id) {
		this.inq_tcate_id = inq_tcate_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Contact [inq_no=" + inq_no + ", inq_title=" + inq_title + ", inq_content=" + inq_content + ", inq_date="
				+ inq_date + ", inq_writer=" + inq_writer + ", inq_reply=" + inq_reply + ", inq_tcate_id="
				+ inq_tcate_id + "]";
	}

	
	
	
}
