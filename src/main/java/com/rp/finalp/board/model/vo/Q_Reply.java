package com.rp.finalp.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Q_Reply implements java.io.Serializable{
	public static final long SerialVersionUID = 4L;
	
	private int q__re_no;
	private int q_no;
	private String q_re_con;
	private Date q_re_date;
	private String q_re_writer;
	
	public Q_Reply() {}

	public Q_Reply(int q__re_no, int q_no, String q_re_con, Date q_re_date, String q_re_writer) {
		super();
		this.q__re_no = q__re_no;
		this.q_no = q_no;
		this.q_re_con = q_re_con;
		this.q_re_date = q_re_date;
		this.q_re_writer = q_re_writer;
	}

	public int getQ__re_no() {
		return q__re_no;
	}

	public void setQ__re_no(int q__re_no) {
		this.q__re_no = q__re_no;
	}

	public int getq_no(int q_no) {
		return q_no;
	}
	
	public void setq_no(int q_no) {
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
		return SerialVersionUID;
	}

	@Override
	public String toString() {
		return "QReply [q__re_no=" + q__re_no + ", q_no=" + q_no + ", q_re_con=" + q_re_con + ", q_re_date=" + q_re_date + ", q_re_writer="
				+ q_re_writer + "]";
	}
	
	
}
