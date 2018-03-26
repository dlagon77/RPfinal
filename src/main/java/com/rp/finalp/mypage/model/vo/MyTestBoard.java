package com.rp.finalp.mypage.model.vo;

import java.sql.Date;

public class MyTestBoard {
	
	private String mem_name;
	private String test_title;
	private String test_cate;
	private Date test_date;
	private int test_no;
	private int test_maker;
	private int test_writer;
	private String test_orfile;
	private String test_refile;
	private String test_res_cod;

	
	public MyTestBoard() {}

	public MyTestBoard(String mem_name, String test_title, String test_cate, Date test_date, int test_no,
			int test_maker, int test_writer, String test_orfile, String test_refile, String test_res_cod) {
		super();
		this.mem_name = mem_name;
		this.test_title = test_title;
		this.test_cate = test_cate;
		this.test_date = test_date;
		this.test_no = test_no;
		this.test_maker = test_maker;
		this.test_writer = test_writer;
		this.test_orfile = test_orfile;
		this.test_refile = test_refile;
		this.test_res_cod = test_res_cod;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getTest_title() {
		return test_title;
	}

	public void setTest_title(String test_title) {
		this.test_title = test_title;
	}

	public String getTest_cate() {
		return test_cate;
	}

	public void setTest_cate(String test_cate) {
		this.test_cate = test_cate;
	}

	public Date getTest_date() {
		return test_date;
	}

	public void setTest_date(Date test_date) {
		this.test_date = test_date;
	}

	public int getTest_no() {
		return test_no;
	}

	public void setTest_no(int test_no) {
		this.test_no = test_no;
	}

	public int getTest_maker() {
		return test_maker;
	}

	public void setTest_maker(int test_maker) {
		this.test_maker = test_maker;
	}

	public int getTest_writer() {
		return test_writer;
	}

	public void setTest_writer(int test_writer) {
		this.test_writer = test_writer;
	}

	public String getTest_orfile() {
		return test_orfile;
	}

	public void setTest_orfile(String test_orfile) {
		this.test_orfile = test_orfile;
	}

	public String getTest_refile() {
		return test_refile;
	}

	public void setTest_refile(String test_refile) {
		this.test_refile = test_refile;
	}

	public String getTest_res_cod() {
		return test_res_cod;
	}

	public void setTest_res_cod(String test_res_cod) {
		this.test_res_cod = test_res_cod;
	}

	@Override
	public String toString() {
		return "MyTestBoard [mem_name=" + mem_name + ", test_title=" + test_title + ", test_cate=" + test_cate
				+ ", test_date=" + test_date + ", test_no=" + test_no + ", test_maker=" + test_maker + ", test_writer="
				+ test_writer + ", test_orfile=" + test_orfile + ", test_refile=" + test_refile + ", test_res_cod="
				+ test_res_cod + "]";
	}
	
	
	
}
