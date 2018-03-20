package com.rp.finalp.admin.model.vo;

import java.sql.Date;

public class Chart implements java.io.Serializable{

	private static final long serialVersionUID = 1L;

	private Date v_date;
	private int v_count;
	private int studentcount;
	private int tutorcount;
	
	public Chart() {}

	
	
	public Chart(Date v_date, int v_count, int studentcount, int tutorcount) {
		super();
		this.v_date = v_date;
		this.v_count = v_count;
		this.studentcount = studentcount;
		this.tutorcount = tutorcount;
	}



	public Date getV_date() {
		return v_date;
	}

	public void setV_date(Date v_date) {
		this.v_date = v_date;
	}

	public int getV_count() {
		return v_count;
	}

	public void setV_count(int v_count) {
		this.v_count = v_count;
	}

	public int getStudentcount() {
		return studentcount;
	}

	public void setStudentcount(int studentcount) {
		this.studentcount = studentcount;
	}

	public int getTutorcount() {
		return tutorcount;
	}

	public void setTutorcount(int tutorcount) {
		this.tutorcount = tutorcount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return "Chart [v_date=" + v_date + ", v_count=" + v_count + ", studentcount=" + studentcount + ", tutorcount="
				+ tutorcount + "]";
	}
	
	
	
}
