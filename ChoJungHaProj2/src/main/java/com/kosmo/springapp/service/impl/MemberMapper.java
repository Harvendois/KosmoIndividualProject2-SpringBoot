package com.kosmo.springapp.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kosmo.springapp.service.MemberDTO;

@Mapper
public interface MemberMapper {
	
	//아이디와 비밀번호로 회원 조회
		boolean findByIdAndPwd(Map map);
		//전체 조회
		List findAll(Map map);
		//입력
		int save(Map map);
		//레코드 하나
		MemberDTO findByNo(Map map);
		//번호로 조회해서 레코드 하나 삭제
		int deleteByNo(MemberDTO record);
		//번호로 조회해서 레코드 하나 수정
		int updateByNo(MemberDTO record);
		//전체 레코드 수 조회
		int count(Map map);
}
