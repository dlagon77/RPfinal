package com.rp.finalp.lecture.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Lecture implements java.io.Serializable{

	private final static long serialVersionUID = 3L;
	
	private int tutor_no;
	private int lec_id;
	private String lec_cate;
	private String lec_con;
	private String lec_link;
	private String lec_title;
	private String lec_restrict;
	private int lec_readcount;
	
	//재석추가 변수
	private Date lec_date;
	private String mem_name;
	private int apply_count;
	
	public Lecture() {}

	public Lecture(int tutor_no, int lec_id, String lec_cate, String lec_con, String lec_link, String lec_title,
			String lec_restrict, Date lec_date, int lec_readcount,String mem_name,int apply_count) {
		super();
		this.tutor_no = tutor_no;
		this.lec_id = lec_id;
		this.lec_cate = lec_cate;
		this.lec_con = lec_con;
		this.lec_link = lec_link;
		this.lec_title = lec_title;
		this.lec_restrict = lec_restrict;
		this.lec_date = lec_date;
		this.lec_readcount = lec_readcount;
		this.mem_name = mem_name;
		this.apply_count = apply_count;
	}
	
	public Lecture(int tutor_no, int lec_id, String lec_cate, String lec_con, String lec_link, String lec_title,
			String lec_restrict) {
		super();
		this.tutor_no = tutor_no;
		this.lec_id = lec_id;
		this.lec_cate = lec_cate;
		this.lec_con = lec_con;
		this.lec_link = lec_link;
		this.lec_title = lec_title;
		this.lec_restrict = lec_restrict;
	}
	
	public Lecture(int tutor_no, int lec_id, String lec_cate, String lec_con, String lec_link, String lec_title,
			String lec_restrict, int lec_readcount) {
		super();
		this.tutor_no = tutor_no;
		this.lec_id = lec_id;
		this.lec_cate = lec_cate;
		this.lec_con = lec_con;
		this.lec_link = lec_link;
		this.lec_title = lec_title;
		this.lec_restrict = lec_restrict;
		this.lec_readcount = lec_readcount;
	}

	
	
	public Date getLec_date() {
		return lec_date;
	}

	public void setLec_date(Date lec_date) {
		this.lec_date = lec_date;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getApply_count() {
		return apply_count;
	}

	public void setApply_count(int apply_count) {
		this.apply_count = apply_count;
	}

	public int getTutor_no() {
		return tutor_no;
	}

	public void setTutor_no(int tutor_no) {
		this.tutor_no = tutor_no;
	}

	public int getLec_id() {
		return lec_id;
	}

	public void setLec_id(int lec_id) {
		this.lec_id = lec_id;
	}

	public String getLec_cate() {
		return lec_cate;
	}

	public void setLec_cate(String lec_cate) {
		this.lec_cate = lec_cate;
	}

	public String getLec_con() {
		return lec_con;
	}

	public void setLec_con(String lec_con) {
		this.lec_con = lec_con;
	}

	public String getLec_link() {
		return lec_link;
	}

	public void setLec_link(String lec_link) {
		this.lec_link = lec_link;
	}

	public String getLec_title() {
		return lec_title;
	}

	public void setLec_title(String lec_title) {
		this.lec_title = lec_title;
	}

	public String getLec_restrict() {
		return lec_restrict;
	}

	public void setLec_restrict(String lec_restrict) {
		this.lec_restrict = lec_restrict;
	}

	public int getLec_readcount() {
		return lec_readcount;
	}

	public void setLec_readcount(int lec_readcount) {
		this.lec_readcount = lec_readcount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Lecture [tutor_no=" + tutor_no + ", lec_id=" + lec_id + ", lec_cate=" + lec_cate + ", lec_con="
				+ lec_con + ", lec_link=" + lec_link + ", lec_title=" + lec_title + ", lec_restrict=" + lec_restrict
				+ ", lec_readcount=" + lec_readcount + "]";
	}

	
	
}
