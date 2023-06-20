package com.kosmo.springapp.service;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Alias("boardDto")
public class BoardDTO {
	private String no;
	private String title;
	private String content;
	private java.sql.Date postdate;
	private int hitcount;
	private int likecount;
	
	private String id;
}
