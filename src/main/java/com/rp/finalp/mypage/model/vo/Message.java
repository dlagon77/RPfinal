package com.rp.finalp.mypage.model.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class Message implements java.io.Serializable{
	public static final long serialVersionUID = 11L;
	
	private int mes_no; //쪽지번호
	private String mes_title; //쪽지제목
	private String mes_content; //쪽지내용
	private Date mes_date; //쪽지작성일
	private String mes_writer; //쪽지작성자
	private String mes_receiver; //쪽지수신자
	private int mes_tcate_id; //쪽지카테고리
	
	public Message() {}

	public Message(int mes_no, String mes_title, String mes_content, Date mes_date, String mes_writer,
			String mes_receiver, int mes_tcate_id) {
		super();
		this.mes_no = mes_no;
		this.mes_title = mes_title;
		this.mes_content = mes_content;
		this.mes_date = mes_date;
		this.mes_writer = mes_writer;
		this.mes_receiver = mes_receiver;
		this.mes_tcate_id = mes_tcate_id;
	}

	

	public int getMes_no() {
		return mes_no;
	}

	public void setMes_no(int mes_no) {
		this.mes_no = mes_no;
	}

	public String getMes_title() {
		return mes_title;
	}

	public void setMes_title(String mes_title) {
		this.mes_title = mes_title;
	}

	public String getMes_content() {
		return mes_content;
	}

	public void setMes_content(String mes_content) {
		this.mes_content = mes_content;
	}

	public Date getMes_date() {
		return mes_date;
	}

	public void setMes_date(Date mes_date) {
		this.mes_date = mes_date;
	}

	public String getMes_writer() {
		return mes_writer;
	}

	public void setMes_writer(String mes_writer) {
		this.mes_writer = mes_writer;
	}

	public String getMes_receiver() {
		return mes_receiver;
	}

	public void setMes_receiver(String mes_receiver) {
		this.mes_receiver = mes_receiver;
	}

	public int getMes_tcate_id() {
		return mes_tcate_id;
	}

	public void setMes_tcate_id(int mes_tcate_id) {
		this.mes_tcate_id = mes_tcate_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Message [mes_no=" + mes_no + ", mes_title=" + mes_title + ", mes_content=" + mes_content + ", mes_date="
				+ mes_date + ", mes_writer=" + mes_writer + ", mes_receiver=" + mes_receiver + ", mes_tcate_id="
				+ mes_tcate_id + "]";
	}
	
	
}
