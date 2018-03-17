package com.rp.finalp.admin.model.vo;

import java.sql.Date;

public class Board implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private int bno;
	private String btitle;
	private String bcontent;
	private int breadcnt;
	private Date bdate;
	private String bwriter;
	private int bcateid;
	private String keyword;
	
	public Board() {}

	public Board(int bno, String btitle, String bcontent, int breadcnt, Date bdate, String bwriter, int bcateid) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.breadcnt = breadcnt;
		this.bdate = bdate;
		this.bwriter = bwriter;
		this.bcateid = bcateid;
	}
	
	public Board(int bno, String btitle, String bcontent, int breadcnt, Date bdate, String bwriter, int bcateid,
			String keyword) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.breadcnt = breadcnt;
		this.bdate = bdate;
		this.bwriter = bwriter;
		this.bcateid = bcateid;
		this.keyword = keyword;
	}
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public int getBreadcnt() {
		return breadcnt;
	}

	public void setBreadcnt(int breadcnt) {
		this.breadcnt = breadcnt;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public int getBcateid() {
		return bcateid;
	}

	public void setBcateid(int bcateid) {
		this.bcateid = bcateid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [bno=" + bno + ", btitle=" + btitle + ", bcontent=" + bcontent + ", breadcnt=" + breadcnt
				+ ", bdate=" + bdate + ", bwriter=" + bwriter + ", bcateid=" + bcateid + "]";
	}

	
	
	
}
