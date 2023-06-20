package com.kosmo.springapp.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.ListPagingData;
import com.kosmo.springapp.service.AllService;

@Service
public class MainServiceImpl implements AllService<BoardDTO>{

	
	@Override
	public BoardDTO selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Map map) {
		
		return 0;
	}

	@Override
	public int update(BoardDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(BoardDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ListPagingData<BoardDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
