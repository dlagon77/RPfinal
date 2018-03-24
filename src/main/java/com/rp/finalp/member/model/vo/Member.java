package com.rp.finalp.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member implements java.io.Serializable{
	private static final long serialVersionUID = 1123L;
	
	private int mem_no;        //회원번호
	private String mem_id;     //이메일(아이디)
	private String mem_pwd;    //비밀번호
	private String mem_name;   //이름  
	private String mem_phone;  //전화번호
	private int mem_age;       //나이
	private String mem_gen;    //성별
	private Date mem_birth;  //생년월일
	private String mem_black;  //블랙리스트
	private String mem_cate;   //구분
	private String mem_inter;  //관심
	private String mem_orfile; //회원원본사진명
	private String mem_refile; //회원고유사진명
	private String mem_career; //회원경력
	private String mem_class; //강사홈제목
	private String mem_content; //강사홈설명
	private String mem_channel_id; //강사채널아이디
	
	private int apply_count; //수강생 수
	private int lecture_count; //강의동영상 수 
	
	//리뷰때문에 추가한 변수들
	private int tutor_id; //별점을 줄 강사번호
	private int rev_star; //받은 별점
	private String rev_con; //리뷰 내용
	private Date rev_date; //리뷰등록날짜
	private int rev_no; //리뷰 번호
	private String videoId;


	private Date v_date;
	public Member() {}

	public Member(int mem_no, String mem_id, String mem_pwd, String mem_name, String mem_phone, int mem_age,
			String mem_gen, Date mem_birth, String mem_black, String mem_cate, String mem_inter, String mem_orfile,
			String mem_refile, String mem_career, String mem_class, String mem_content, String mem_channel_id,
			int apply_count, int lecture_count, int tutor_id, int rev_star, String rev_con, Date rev_date, int rev_no,
			String videoId, Date v_date) {
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
		this.mem_career = mem_career;
		this.mem_class = mem_class;
		this.mem_content = mem_content;
		this.mem_channel_id = mem_channel_id;
		this.apply_count = apply_count;
		this.lecture_count = lecture_count;
		this.tutor_id = tutor_id;
		this.rev_star = rev_star;
		this.rev_con = rev_con;
		this.rev_date = rev_date;
		this.rev_no = rev_no;
		this.videoId = videoId;
		this.v_date = v_date;
	}

	public Member(int mem_no, String mem_id, String mem_pwd, String mem_name, String mem_phone, int mem_age,
			String mem_gen, Date mem_birth, String mem_black, String mem_cate, String mem_inter, String mem_orfile,
			String mem_refile, String mem_career, String mem_class, String mem_content,
			int apply_count, int lecture_count, int rev_star, String rev_con, Date rev_date, int rev_no) {
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
		this.mem_career = mem_career;
		this.mem_class = mem_class;
		this.mem_content = mem_content;
		this.apply_count = apply_count;
		this.lecture_count = lecture_count;
		this.rev_star = rev_star;
		this.rev_con = rev_con;
		this.rev_date = rev_date;
		this.rev_no = rev_no;
	}

	public Member(int mem_no, String mem_id, String mem_pwd, String mem_name, String mem_phone, int mem_age,
			String mem_gen, Date mem_birth, String mem_black, String mem_cate, String mem_inter, String mem_orfile,
			String mem_refile, String mem_career, String mem_class, String mem_content, String mem_channel_id) {
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
		this.mem_career = mem_career;
		this.mem_class = mem_class;
		this.mem_content = mem_content;
		this.mem_channel_id = mem_channel_id;
	}

	
	public Date getV_date() {
		return v_date;
	}

	public void setV_date(Date v_date) {
		this.v_date = v_date;
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

	public Date getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(Date mem_birth) {
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

	public String getMem_career() {
		return mem_career;
	}

	public void setMem_career(String mem_career) {
		this.mem_career = mem_career;
	}

	public String getMem_class() {
		return mem_class;
	}

	public void setMem_class(String mem_class) {
		this.mem_class = mem_class;
	}

	public String getMem_content() {
		return mem_content;
	}

	public void setMem_content(String mem_content) {
		this.mem_content = mem_content;
	}

	public String getMem_channel_id() {
		return mem_channel_id;
	}

	public void setMem_channel_id(String mem_channel_id) {
		this.mem_channel_id = mem_channel_id;
	}

	public int getApply_count() {
		return apply_count;
	}

	public void setApply_count(int apply_count) {
		this.apply_count = apply_count;
	}

	public int getLecture_count() {
		return lecture_count;
	}

	public void setLecture_count(int lecture_count) {
		this.lecture_count = lecture_count;
	}

	public int getRev_star() {
		return rev_star;
	}

	public void setRev_star(int rev_star) {
		this.rev_star = rev_star;
	}

	public String getRev_con() {
		return rev_con;
	}

	public void setRev_con(String rev_con) {
		this.rev_con = rev_con;
	}

	public Date getRev_date() {
		return rev_date;
	}

	public void setRev_date(Date rev_date) {
		this.rev_date = rev_date;
	}

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	
	
	

	public String getVideoId() {
		return videoId;
	}

	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}

	public int getTutor_id() {
		return tutor_id;
	}

	public void setTutor_id(int tutor_id) {
		this.tutor_id = tutor_id;
	}

	@Override
	public String toString() {
		return "Member [mem_no=" + mem_no + ", mem_id=" + mem_id + ", mem_pwd=" + mem_pwd + ", mem_name=" + mem_name
				+ ", mem_phone=" + mem_phone + ", mem_age=" + mem_age + ", mem_gen=" + mem_gen + ", mem_birth="
				+ mem_birth + ", mem_black=" + mem_black + ", mem_cate=" + mem_cate + ", mem_inter=" + mem_inter
				+ ", mem_orfile=" + mem_orfile + ", mem_refile=" + mem_refile + ", mem_career=" + mem_career
				+ ", mem_class=" + mem_class + ", mem_content=" + mem_content + ", mem_channel_id=" + mem_channel_id
				+ ", apply_count=" + apply_count + ", lecture_count=" + lecture_count + ", tutor_id=" + tutor_id
				+ ", rev_star=" + rev_star + ", rev_con=" + rev_con + ", rev_date=" + rev_date + ", rev_no=" + rev_no
				+ ", videoId=" + videoId + ", v_date=" + v_date + "]";
	}

	

	
	
	
}