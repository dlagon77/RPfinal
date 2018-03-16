package com.rp.finalp.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Q_Reply implements java.io.Serializable{
	public static final long serialVersionUID = 4L;
	
	private int q_re_no;
	private int q_no;
	private String q_re_con;
	private Date q_re_date;
	private String q_re_writer;
	private int mem_no;
	private String q_re_sdate;
	
	public Q_Reply() {}

	public Q_Reply(int q_re_no, int q_no, String q_re_con, Date q_re_date, String q_re_writer, int mem_no) {
		super();
		this.q_re_no = q_re_no;
		this.q_no = q_no;
		this.q_re_con = q_re_con;
		this.q_re_date = q_re_date;
		this.q_re_writer = q_re_writer;
		this.mem_no = mem_no;
	}

	public String getQ_re_sdate() {
		return q_re_sdate;
	}

	public void setQ_re_sdate(String q_re_sdate) {
		this.q_re_sdate = q_re_sdate;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getQ_re_no() {
		return q_re_no;
	}

	public void setQ_re_no(int q_re_no) {
		this.q_re_no = q_re_no;
	}

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQ_re_con() {
		return q_re_con;
	}

	public void setQ_re_con(String q_re_con) {
		this.q_re_con = q_re_con;
	}

	public Date getQ_re_date() {
		return q_re_date;
	}

	public void setQ_re_date(Date q_re_date) {
		this.q_re_date = q_re_date;
	}

	public String getQ_re_writer() {
		return q_re_writer;
	}

	public void setQ_re_writer(String q_re_writer) {
		this.q_re_writer = q_re_writer;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Q_Reply [q_re_no=" + q_re_no + ", q_no=" + q_no + ", q_re_con=" + q_re_con + ", q_re_date=" + q_re_date
				+ ", q_re_writer=" + q_re_writer + "]";
	}	
}
