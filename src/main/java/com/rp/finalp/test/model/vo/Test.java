package com.rp.finalp.test.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Test implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 907667402079170459L;
	
	private int test_no;
	private String test_comment;
	private Date test_reg_date;
	private Date test_date;
	private String test_orfile;
	private String test_refile;
	private String test_cate;
	private String test_title;
	private int test_cor_cnt;
	private String test_pro;
	private String test_answer;
	private String test_res_cod;
	private String test_res_ans;
	private int test_writer;
	private int test_maker;
	private int test_lec_id;
	private int test_tcate_id;
	
	public Test() {}
	public Test(int test_no, String test_comment, Date test_reg_date, Date test_date, String test_orfile,
			String test_refile, String test_cate, String test_title, int test_cor_cnt, String test_pro,
			String test_answer, String test_res_cod, String test_res_ans, int test_writer, int test_maker,
			int test_lec_id, int test_tcate_id) {
		super();
		this.test_no = test_no;
		this.test_comment = test_comment;
		this.test_reg_date = test_reg_date;
		this.test_date = test_date;
		this.test_orfile = test_orfile;
		this.test_refile = test_refile;
		this.test_cate = test_cate;
		this.test_title = test_title;
		this.test_cor_cnt = test_cor_cnt;
		this.test_pro = test_pro;
		this.test_answer = test_answer;
		this.test_res_cod = test_res_cod;
		this.test_res_ans = test_res_ans;
		this.test_writer = test_writer;
		this.test_maker = test_maker;
		this.test_lec_id = test_lec_id;
		this.test_tcate_id = test_tcate_id;
	}
	public int getTest_no() {
		return test_no;
	}
	public void setTest_no(int test_no) {
		this.test_no = test_no;
	}
	public String getTest_comment() {
		return test_comment;
	}
	public void setTest_comment(String test_comment) {
		this.test_comment = test_comment;
	}
	public Date getTest_reg_date() {
		return test_reg_date;
	}
	public void setTest_reg_date(Date test_reg_date) {
		this.test_reg_date = test_reg_date;
	}
	public Date getTest_date() {
		return test_date;
	}
	public void setTest_date(Date test_date) {
		this.test_date = test_date;
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
	public String getTest_cate() {
		return test_cate;
	}
	public void setTest_cate(String test_cate) {
		this.test_cate = test_cate;
	}
	public String getTest_title() {
		return test_title;
	}
	public void setTest_title(String test_title) {
		this.test_title = test_title;
	}
	public int getTest_cor_cnt() {
		return test_cor_cnt;
	}
	public void setTest_cor_cnt(int test_cor_cnt) {
		this.test_cor_cnt = test_cor_cnt;
	}
	public String getTest_pro() {
		return test_pro;
	}
	public void setTest_pro(String test_pro) {
		this.test_pro = test_pro;
	}
	public String getTest_answer() {
		return test_answer;
	}
	public void setTest_answer(String test_answer) {
		this.test_answer = test_answer;
	}
	public String getTest_res_cod() {
		return test_res_cod;
	}
	public void setTest_res_cod(String test_res_cod) {
		this.test_res_cod = test_res_cod;
	}
	public String getTest_res_ans() {
		return test_res_ans;
	}
	public void setTest_res_ans(String test_res_ans) {
		this.test_res_ans = test_res_ans;
	}
	public int getTest_writer() {
		return test_writer;
	}
	public void setTest_writer(int test_writer) {
		this.test_writer = test_writer;
	}
	public int getTest_maker() {
		return test_maker;
	}
	public void setTest_maker(int test_maker) {
		this.test_maker = test_maker;
	}
	public int getTest_lec_id() {
		return test_lec_id;
	}
	public void setTest_lec_id(int test_lec_id) {
		this.test_lec_id = test_lec_id;
	}
	public int getTest_tcate_id() {
		return test_tcate_id;
	}
	public void setTest_tcate_id(int test_tcate_id) {
		this.test_tcate_id = test_tcate_id;
	}
	
	@Override
	public String toString() {
		return 	test_no + ", " + test_comment + ", " + test_reg_date + ", " + test_date
				 + ", " + test_orfile + ", " + test_refile + ", " + test_cate
				 + ", " + test_title + ", " + test_cor_cnt + ", " + test_pro
				 + ", " + test_answer + ", " + test_res_cod + ", " + test_res_ans
				 + ", " + test_writer + ", " + test_maker + ", " + test_lec_id + ", " + test_tcate_id;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
