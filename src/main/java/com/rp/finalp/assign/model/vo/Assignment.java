package com.rp.finalp.assign.model.vo;

import org.springframework.stereotype.Component;
import java.sql.Date;

@Component
public class Assignment implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3689123808925522523L;
	private int ass_no;
	private String ass_comment;
	private Date ass_reg_date;
	private Date ass_date;
	private String ass_orfile;
	private String ass_refile;
	private String ass_cate;
	private String ass_title;
	private int ass_cor_cnt;
	private String ass_pro;
	private String ass_answer;
	private String ass_hint;
	private String ass_res_cod;
	private String ass_res_ans;
	private int ass_writer;
	private int ass_maker;
	private int ass_lec_id;
	private int ass_tcate_id;
	
	//재석 추가
	private String mem_name;
	private int mem_no;
	
	public Assignment() {}

	
	public Assignment(int ass_no, String ass_comment, Date ass_reg_date, Date ass_date, String ass_orfile,
			String ass_refile, String ass_cate, String ass_title, int ass_cor_cnt, String ass_pro, String ass_answer,
			String ass_hint, String ass_res_cod, String ass_res_ans, int ass_writer, int ass_maker, int ass_lec_id,
			int ass_tcate_id,String mem_name,int mem_no) {
		super();
		this.ass_no = ass_no;
		this.ass_comment = ass_comment;
		this.ass_reg_date = ass_reg_date;
		this.ass_date = ass_date;
		this.ass_orfile = ass_orfile;
		this.ass_refile = ass_refile;
		this.ass_cate = ass_cate;
		this.ass_title = ass_title;
		this.ass_cor_cnt = ass_cor_cnt;
		this.ass_pro = ass_pro;
		this.ass_answer = ass_answer;
		this.ass_hint = ass_hint;
		this.ass_res_cod = ass_res_cod;
		this.ass_res_ans = ass_res_ans;
		this.ass_writer = ass_writer;
		this.ass_maker = ass_maker;
		this.ass_lec_id = ass_lec_id;
		this.ass_tcate_id = ass_tcate_id;
		this.mem_name = mem_name;
		this.mem_no = mem_no;
	}

	

	public int getMem_no() {
		return mem_no;
	}


	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}


	public String getMem_name() {
		return mem_name;
	}


	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}


	public int getAss_no() {
		return ass_no;
	}


	public void setAss_no(int ass_no) {
		this.ass_no = ass_no;
	}


	public String getAss_comment() {
		return ass_comment;
	}


	public void setAss_comment(String ass_comment) {
		this.ass_comment = ass_comment;
	}


	public Date getAss_reg_date() {
		return ass_reg_date;
	}


	public void setAss_reg_date(Date ass_reg_date) {
		this.ass_reg_date = ass_reg_date;
	}


	public Date getAss_date() {
		return ass_date;
	}


	public void setAss_date(Date ass_date) {
		this.ass_date = ass_date;
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


	public String getAss_cate() {
		return ass_cate;
	}


	public void setAss_cate(String ass_cate) {
		this.ass_cate = ass_cate;
	}


	public String getAss_title() {
		return ass_title;
	}


	public void setAss_title(String ass_title) {
		this.ass_title = ass_title;
	}


	public int getAss_cor_cnt() {
		return ass_cor_cnt;
	}


	public void setAss_cor_cnt(int ass_cor_cnt) {
		this.ass_cor_cnt = ass_cor_cnt;
	}


	public String getAss_pro() {
		return ass_pro;
	}


	public void setAss_pro(String ass_pro) {
		this.ass_pro = ass_pro;
	}


	public String getAss_answer() {
		return ass_answer;
	}


	public void setAss_answer(String ass_answer) {
		this.ass_answer = ass_answer;
	}


	public String getAss_hint() {
		return ass_hint;
	}


	public void setAss_hint(String ass_hint) {
		this.ass_hint = ass_hint;
	}


	public String getAss_res_cod() {
		return ass_res_cod;
	}


	public void setAss_res_cod(String ass_res_cod) {
		this.ass_res_cod = ass_res_cod;
	}


	public String getAss_res_ans() {
		return ass_res_ans;
	}


	public void setAss_res_ans(String ass_res_ans) {
		this.ass_res_ans = ass_res_ans;
	}


	public int getAss_writer() {
		return ass_writer;
	}


	public void setAss_writer(int ass_writer) {
		this.ass_writer = ass_writer;
	}


	public int getAss_maker() {
		return ass_maker;
	}


	public void setAss_maker(int ass_maker) {
		this.ass_maker = ass_maker;
	}


	public int getAss_lec_id() {
		return ass_lec_id;
	}


	public void setAss_lec_id(int ass_lec_id) {
		this.ass_lec_id = ass_lec_id;
	}


	public int getAss_tcate_id() {
		return ass_tcate_id;
	}


	public void setAss_tcate_id(int ass_tcate_id) {
		this.ass_tcate_id = ass_tcate_id;
	}


	@Override
	public String toString() {
		return 	ass_no + ", " + ass_comment + ", " + ass_reg_date + ", " + 
				ass_date + ", " + ass_orfile + ", " + ass_refile + ", " + ass_cate + ", " + 
				ass_title + ", " + ass_cor_cnt + ", " + ass_pro + ", " + ass_answer + ", " + 
				ass_hint + ", " + ass_res_cod + ", " + ass_res_ans + ", " + ass_writer + ", " + 
				ass_maker + ", " + ass_lec_id + ", " + ass_tcate_id + + mem_no+"\n";
	}
	
}
