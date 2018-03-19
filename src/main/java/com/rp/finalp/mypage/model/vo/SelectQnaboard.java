package com.rp.finalp.mypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class SelectQnaboard implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 887680821811424056L;
	private int q_no; //원글번호
	private String q_title; //제목
	private String q_content; //내용
	private int q_read_cnt; //조회수
	private Date q_date; //작성일
//	private int q_writer; //작성자회원번호
	private int q_tcate_id; //QNA카테고리
	private String mem_name;//작성자이름
	private int mem_no;
	
	public SelectQnaboard() {}
	public SelectQnaboard(int q_no, String q_title, String q_content, int q_read_cnt, Date q_date, int q_tcate_id,
			String mem_name, int mem_no) {
		super();
		this.q_no = q_no;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_read_cnt = q_read_cnt;
		this.q_date = q_date;
		this.q_tcate_id = q_tcate_id;
		this.mem_name = mem_name;
		this.mem_no = mem_no;
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
	public int getQ_tcate_id() {
		return q_tcate_id;
	}
	public void setQ_tcate_id(int q_tcate_id) {
		this.q_tcate_id = q_tcate_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
		
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	@Override
	public String toString() {
		return "SelectQnaboard [q_no=" + q_no + ", q_title=" + q_title + ", q_content=" + q_content + ", q_read_cnt="
				+ q_read_cnt + ", q_date=" + q_date + ", q_tcate_id=" + q_tcate_id + ", mem_name=" + mem_name
				+ ", mem_no=" + mem_no + "]";
	}
	
}
