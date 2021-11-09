package co.three.prj.comment.service;

import java.sql.Date;


public class CommentVO {

	private String cnid;
	private int cboard;
	private String cid;
	private Date cdate;
	private String cparent;
	private String ccontent;
	private String picture;
	
	public String getCnid() {
		return cnid;
	}
	public void setCnid(String cnid) {
		this.cnid = cnid;
	}
	public int getCboard() {
		return cboard;
	}
	public void setCboard(int cboard) {
		this.cboard = cboard;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getCparent() {
		return cparent;
	}
	public void setCparent(String cparent) {
		this.cparent = cparent;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}



}
