package com.team12.main.team2board;

import java.util.Date;

public class Team2BoardDTO {

	private int board_num;
	private String board_member_id;
	private String board_category;
	private String board_title;
	private String board_txt;
	private Date board_date;
	private String board_img; 
	private int pageCount;
	
	public Team2BoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getBoard_member_id() {
		return board_member_id;
	}

	public void setBoard_member_id(String board_member_id) {
		this.board_member_id = board_member_id;
	}

	public String getBoard_category() {
		return board_category;
	}

	public void setBoard_category(String board_category) {
		this.board_category = board_category;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_txt() {
		return board_txt;
	}

	public void setBoard_txt(String board_txt) {
		this.board_txt = board_txt;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public String getBoard_img() {
		return board_img;
	}

	public void setBoard_img(String board_img) {
		this.board_img = board_img;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public Team2BoardDTO(int board_num, String board_member_id, String board_category, String board_title,
			String board_txt, Date board_date, String board_img, int pageCount) {
		super();
		this.board_num = board_num;
		this.board_member_id = board_member_id;
		this.board_category = board_category;
		this.board_title = board_title;
		this.board_txt = board_txt;
		this.board_date = board_date;
		this.board_img = board_img;
		this.pageCount = pageCount;
	}
	
	
	
}