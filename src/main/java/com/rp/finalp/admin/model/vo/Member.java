package com.rp.finalp.admin.model.vo;

public class Member implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private int mem_no;
	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_phone;
	private int mem_age;
	private String mem_gen;
	private String mem_birth;
	private String mem_black;
	private String mem_cate;
	private String mem_inter;
	private String mem_orfile;
	private String mem_refile;
	private int boardcount;
	private int replycount;
	private int studentcount;
	private int lecturecount;
	private int reviewcount;
	private String lec_title;
	private String lec_con;
	private String rev_con;

	public Member() {}

	public Member(int mem_no, String mem_id, String mem_pwd, String mem_name, String mem_phone, int mem_age,
			String mem_gen, String mem_birth, String mem_black, String mem_cate, String mem_inter, String mem_orfile,
			String mem_refile) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_pwd = mem_pwd;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_age = mem_age;
		this.mem_gen = mem_gen;
		this.mem_birth = mem_birth;
		this.mem_black = mem_black;
		this.mem_cate = mem_cate;
		this.mem_inter = mem_inter;
		this.mem_orfile = mem_orfile;
		this.mem_refile = mem_refile;
	}
	
	
	
	public String getLec_title() {
		return lec_title;
	}

	public void setLec_title(String lec_title) {
		this.lec_title = lec_title;
	}

	public String getLec_con() {
		return lec_con;
	}

	public void setLec_con(String lec_con) {
		this.lec_con = lec_con;
	}

	public String getRev_con() {
		return rev_con;
	}

	public void setRev_con(String rev_con) {
		this.rev_con = rev_con;
	}

	public int getStudentcount() {
		return studentcount;
	}

	public void setStudentcount(int studentcount) {
		this.studentcount = studentcount;
	}

	public int getLecturecount() {
		return lecturecount;
	}

	public void setLecturecount(int lecturecount) {
		this.lecturecount = lecturecount;
	}

	public int getReviewcount() {
		return reviewcount;
	}

	public void setReviewcount(int reviewcount) {
		this.reviewcount = reviewcount;
	}

	public Member(int boardcount) {
		super();
		this.boardcount = boardcount;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pwd() {
		return mem_pwd;
	}

	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public int getMem_age() {
		return mem_age;
	}

	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}

	public String getMem_gen() {
		return mem_gen;
	}

	public void setMem_gen(String mem_gen) {
		this.mem_gen = mem_gen;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_black() {
		return mem_black;
	}

	public void setMem_black(String mem_black) {
		this.mem_black = mem_black;
	}

	public String getMem_cate() {
		return mem_cate;
	}

	public void setMem_cate(String mem_cate) {
		this.mem_cate = mem_cate;
	}

	public String getMem_inter() {
		return mem_inter;
	}

	public void setMem_inter(String mem_inter) {
		this.mem_inter = mem_inter;
	}

	public String getMem_orfile() {
		return mem_orfile;
	}

	public void setMem_orfile(String mem_orfile) {
		this.mem_orfile = mem_orfile;
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

	public int getBoardcount() {
		return boardcount;
	}

	public void setBoardcount(int boardcount) {
		this.boardcount = boardcount;
	}

	public int getReplycount() {
		return replycount;
	}

	public void setReplycount(int replycount) {
		this.replycount = replycount;
	}

	@Override
	public String toString() {
		return "Member [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name
				+ ", mem_phone=" + mem_phone + ", mem_age=" + mem_age + ", mem_gen=" + mem_gen + ", mem_birth="
				+ mem_birth + ", mem_black=" + mem_black + ", mem_cate=" + mem_cate + ", mem_inter=" + mem_inter
				+ ", mem_orfile=" + mem_orfile + ", mem_refile=" + mem_refile + ", boardcount=" + boardcount
				+ ", replycount=" + replycount + "]";
	}

	
	
}
