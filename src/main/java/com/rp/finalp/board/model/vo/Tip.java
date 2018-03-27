package com.rp.finalp.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Tip implements java.io.Serializable{
	public static final long serialVersionUID = 3L;
	
	private int tip_no;
	private String tip_title;
	private String tip_content;
	private int tip_read_cnt;
	private Date tip_date;
	private String tip_writer;
	private int tip_tcate_id;
	private int t_no;
	private int t_re_no;
	private String t_re_con;
	private Date t_re_date;
	private String t_re_writer;
	private int mem_no;
	private String t_re_sdate;
	
	public Tip() {}

	public Tip(int tip_no, String tip_title, String tip_content, int tip_read_cnt, Date tip_date, String tip_writer,
			int tip_tcate_id, int t_re_no, String t_re_con, Date t_re_date, String t_re_writer, int mem_no,
			String t_re_sdate) {
		super();
		this.tip_no = tip_no;
		this.tip_title = tip_title;
		this.tip_content = tip_content;
		this.tip_read_cnt = tip_read_cnt;
		this.tip_date = tip_date;
		this.tip_writer = tip_writer;
		this.tip_tcate_id = tip_tcate_id;
		this.t_re_no = t_re_no;
		this.t_re_con = t_re_con;
		this.t_re_date = t_re_date;
		this.t_re_writer = t_re_writer;
		this.mem_no = mem_no;
		this.t_re_sdate = t_re_sdate;
	}

	public int getTip_no() {
		return tip_no;
	}
	
	public int getT_no() {
		return t_no;
	}

	public void setT_no(int t_no) {
		this.t_no = t_no;
	}

	public void setTip_no(int tip_no) {
		this.tip_no = tip_no;
	}

	public String getTip_title() {
		return tip_title;
	}

	public void setTip_title(String tip_title) {
		this.tip_title = tip_title;
	}

	public String getTip_content() {
		return tip_content;
	}

	public void setTip_content(String tip_content) {
		this.tip_content = tip_content;
	}

	public int getTip_read_cnt() {
		return tip_read_cnt;
	}

	public void setTip_read_cnt(int tip_read_cnt) {
		this.tip_read_cnt = tip_read_cnt;
	}

	public Date getTip_date() {
		return tip_date;
	}

	public void setTip_date(Date tip_date) {
		this.tip_date = tip_date;
	}

	public String getTip_writer() {
		return tip_writer;
	}

	public void setTip_writer(String tip_writer) {
		this.tip_writer = tip_writer;
	}

	public int getTip_tcate_id() {
		return tip_tcate_id;
	}

	public void setTip_tcate_id(int tip_tcate_id) {
		this.tip_tcate_id = tip_tcate_id;
	}

	public int getT_re_no() {
		return t_re_no;
	}

	public void setT_re_no(int t_re_no) {
		this.t_re_no = t_re_no;
	}

	public String getT_re_con() {
		return t_re_con;
	}

	public void setT_re_con(String t_re_con) {
		this.t_re_con = t_re_con;
	}

	public Date getT_re_date() {
		return t_re_date;
	}

	public void setT_re_date(Date t_re_date) {
		this.t_re_date = t_re_date;
	}

	public String getT_re_writer() {
		return t_re_writer;
	}

	public void setT_re_writer(String t_re_writer) {
		this.t_re_writer = t_re_writer;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getT_re_sdate() {
		return t_re_sdate;
	}

	public void setT_re_sdate(String t_re_sdate) {
		this.t_re_sdate = t_re_sdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
