package com.rp.finalp.mypage.model.vo;

import java.sql.Date;

public class MysubAssign {
	private String mem_name;
	private String ass_title;
	private String ass_cate;
	private Date ass_date;
	private int ass_no;
	private int ass_maker;
	private int ass_writer;
	private String ass_orfile;
	private String ass_refile;
	
	public MysubAssign() {}

	public MysubAssign(String mem_name, String ass_title, String ass_cate, Date ass_date, int ass_no, int ass_maker,
			int ass_writer, String ass_orfile, String ass_refile) {
		super();
		this.mem_name = mem_name;
		this.ass_title = ass_title;
		this.ass_cate = ass_cate;
		this.ass_date = ass_date;
		this.ass_no = ass_no;
		this.ass_maker = ass_maker;
		this.ass_writer = ass_writer;
		this.ass_orfile = ass_orfile;
		this.ass_refile = ass_refile;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getAss_title() {
		return ass_title;
	}

	public void setAss_title(String ass_title) {
		this.ass_title = ass_title;
	}

	public String getAss_cate() {
		return ass_cate;
	}

	public void setAss_cate(String ass_cate) {
		this.ass_cate = ass_cate;
	}

	public Date getAss_date() {
		return ass_date;
	}

	public void setAss_date(Date ass_date) {
		this.ass_date = ass_date;
	}

	public int getAss_no() {
		return ass_no;
	}

	public void setAss_no(int ass_no) {
		this.ass_no = ass_no;
	}

	public int getAss_maker() {
		return ass_maker;
	}

	public void setAss_maker(int ass_maker) {
		this.ass_maker = ass_maker;
	}

	public int getAss_writer() {
		return ass_writer;
	}

	public void setAss_writer(int ass_writer) {
		this.ass_writer = ass_writer;
	}

	public String getAss_orfile() {
		return ass_orfile;
	}

	public void setAss_orfile(String ass_orfile) {
		this.ass_orfile = ass_orfile;
	}

	public String getAss_refile() {
		return ass_refile;
	}

	public void setAss_refile(String ass_refile) {
		this.ass_refile = ass_refile;
	}

	@Override
	public String toString() {
		return "MysubAssign [mem_name=" + mem_name + ", ass_title=" + ass_title + ", ass_cate=" + ass_cate
				+ ", ass_date=" + ass_date + ", ass_no=" + ass_no + ", ass_maker=" + ass_maker + ", ass_writer="
				+ ass_writer + ", ass_orfile=" + ass_orfile + ", ass_refile=" + ass_refile + "]";
	}
}
