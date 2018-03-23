package com.rp.finalp.mypage.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Mysubsc implements java.io.Serializable{
	private final static long serialVersionUID = 4567L;
	private int mem_no;
	private int app_student_no;
	private String mem_name;
	private String mem_refile;
	private String app_y;
	
	public Mysubsc() {}

	public Mysubsc(int mem_no, int app_student_no, String mem_name, String mem_refile, String app_y) {
		super();
		this.mem_no = mem_no;
		this.app_student_no = app_student_no;
		this.mem_name = mem_name;
		this.mem_refile = mem_refile;
		this.app_y = app_y;
	}

	
	
	public String getApp_y() {
		return app_y;
	}

	public void setApp_y(String app_y) {
		this.app_y = app_y;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getApp_student_no() {
		return app_student_no;
	}

	public void setApp_student_no(int app_student_no) {
		this.app_student_no = app_student_no;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_refile() {
		return mem_refile;
	}

	public void setMem_refile(String mem_refile) {
		this.mem_refile = mem_refile;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Mysubsc [mem_no=" + mem_no + ", app_student_no=" + app_student_no + ", mem_name=" + mem_name
				+ ", mem_refile=" + mem_refile + ", app_y=" + app_y + "]";
	}

	
}
