package com.kosmo.springapp.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kosmo.springapp.service.AllService;
import com.kosmo.springapp.service.ListPagingData;
import com.kosmo.springapp.service.MemberDTO;

@Service
public class MemberServiceImpl implements AllService<MemberDTO>{

	@Autowired
	private MemberMapper mapper;
	
	public boolean isMember(Map map) {
		
		boolean isMember = mapper.findByIdAndPwd(map);
		return isMember;
	}

	@Override
	public int insert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(MemberDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(MemberDTO record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ListPagingData<MemberDTO> selectList(Map map, HttpServletRequest req, int nowPage) {
		// TODO Auto-generated method stub
		return null;
	}

}
