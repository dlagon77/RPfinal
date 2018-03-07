package com.rp.finalp.lecture.model.vo;

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
	
	public Lecture() {}

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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Lecture [tutor_no=" + tutor_no + ", lec_id=" + lec_id + ", lec_cate=" + lec_cate + ", lec_con="
				+ lec_con + ", lec_link=" + lec_link + ", lec_title=" + lec_title + ", lec_restrict=" + lec_restrict
				+ "]";
	}
	
	
	
	
}
