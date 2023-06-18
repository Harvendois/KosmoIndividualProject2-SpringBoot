package com.kosmo.springapp.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public interface AllService<T> {
	ListPagingData<T> selectList(Map map,HttpServletRequest req,int nowPage);
	//상세보기용
	T selectOne(Map map);
	//입력/수정/삭제용
	int insert(Map map);
	int update(T record);
	int delete(T record);
}
