package com.sist.vo;

public class SearchNameVO {
	
	private String ename;
	private String dloc;
	public SearchNameVO(String ename, String dloc) {
		super();
		this.ename = ename;
		this.dloc = dloc;
	}
	public SearchNameVO() {
		super();
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getDloc() {
		return dloc;
	}
	public void setDloc(String dloc) {
		this.dloc = dloc;
	}
	
	
	

}
