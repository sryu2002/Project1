package com.doglife.db.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardDto {
	private int b_num;
	private String b_category;
	private String b_title;
	private String b_id; //
	private String b_contents;
	private String customerName; // Name
	private Timestamp postDate;
	private int b_views;	
}
