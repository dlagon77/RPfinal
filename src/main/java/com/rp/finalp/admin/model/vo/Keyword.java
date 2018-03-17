package com.rp.finalp.admin.model.vo;

import java.sql.Date;

public class Keyword implements  java.io.Serializable{

	private static final long serialVersionUID = 1L;
	private int key_no;
	private String key_word;
	private Date key_date;
	
	public Keyword() {}
	
	public Keyword(int key_no, String key_word, Date key_date) {
		super();
		this.key_no = key_no;
		this.key_word = key_word;
		this.key_date = key_date;
	}

	public int getKey_no() {
		return key_no;
	}

	public void setKey_no(int key_no) {
		this.key_no = key_no;
	}

	public String getKey_word() {
		return key_word;
	}

	public void setKey_word(String key_word) {
		this.key_word = key_word;
	}

	public Date getKey_date() {
		return key_date;
	}

	public void setKey_date(Date key_date) {
		this.key_date = key_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Keyword [key_no=" + key_no + ", key_word=" + key_word + ", key_date=" + key_date + "]";
	}

	
}
