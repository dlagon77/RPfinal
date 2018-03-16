package com.rp.finalp.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class QnaBoard implements java.io.Serializable{
	public static final long serialVersionUID = 3L;
	
	private int q_no;
	private String q_title;
	private String q_content;
	private int q_read_cnt;
	private Date q_date;
	private String q_writer;
	private int q_tcate_id;
	
	public QnaBoard() {}

	public QnaBoard(int q_no, String q_title, String q_content, int q_read_cnt, Date q_date, String q_writer, int q_tcate_id) {
		super();
		this.q_no = q_no;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_read_cnt = q_read_cnt;
		this.q_date = q_date;
		this.q_writer = q_writer;
		this.q_tcate_id = q_tcate_id;
	}

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public int getQ_read_cnt() {
		return q_read_cnt;
	}

	public void setQ_read_cnt(int q_read_cnt) {
		this.q_read_cnt = q_read_cnt;
	}

	public Date getQ_date() {
		return q_date;
	}

	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}

	public String getQ_writer() {
		return q_writer;
	}

	public void setQ_writer(String q_writer) {
		this.q_writer = q_writer;
	}
	
	public int getQ_tcate_id() {
		return q_tcate_id;
	}
	
	public void setQ_tcate_id(int q_tcate_id) {
		this.q_tcate_id = q_tcate_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "QnaBoard [q_no=" + q_no + ", q_title=" + q_title + ", q_content=" + q_content + ", q_read_cnt="
				+ q_read_cnt + ", q_date=" + q_date + ", q_writer=" + q_writer + ", q_tcate_id=" + q_tcate_id + "]";
	}
	
	
}
