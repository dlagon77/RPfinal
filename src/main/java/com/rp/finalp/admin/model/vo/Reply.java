package com.rp.finalp.admin.model.vo;

import java.sql.Date;

public class Reply implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private int re_no;
	private int b_no;
	private String re_con;
	private Date re_date;
	private int re_writer;
	private int re_cateid;
	private String btitle;
	
	public Reply() {}

	public Reply(int re_no, int b_no, String re_con, Date re_date, int re_writer, int re_cateid) {
		super();
		this.re_no = re_no;
		this.b_no = b_no;
		this.re_con = re_con;
		this.re_date = re_date;
		this.re_writer = re_writer;
		this.re_cateid = re_cateid;
	}
	
	public Reply(int re_no, int b_no, String re_con, Date re_date, int re_writer, int re_cateid, String btitle) {
		super();
		this.re_no = re_no;
		this.b_no = b_no;
		this.re_con = re_con;
		this.re_date = re_date;
		this.re_writer = re_writer;
		this.re_cateid = re_cateid;
		this.btitle = btitle;
	}
	
	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public int getRe_no() {
		return re_no;
	}

	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getRe_con() {
		return re_con;
	}

	public void setRe_con(String re_con) {
		this.re_con = re_con;
	}

	public Date getRe_date() {
		return re_date;
	}

	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}

	public int getRe_writer() {
		return re_writer;
	}

	public void setRe_writer(int re_writer) {
		this.re_writer = re_writer;
	}

	public int getRe_cateid() {
		return re_cateid;
	}

	public void setRe_cateid(int re_cateid) {
		this.re_cateid = re_cateid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Reply [re_no=" + re_no + ", b_no=" + b_no + ", re_con=" + re_con + ", re_date=" + re_date
				+ ", re_writer=" + re_writer + ", re_cateid=" + re_cateid + "]";
	}
	
	
}
