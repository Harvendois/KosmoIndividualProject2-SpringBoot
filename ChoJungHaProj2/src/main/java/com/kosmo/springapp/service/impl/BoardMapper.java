package com.kosmo.springapp.service.impl;

import java.util.List;
import java.util.Map;

import com.kosmo.springapp.service.BoardDTO;
import com.kosmo.springapp.service.MemberDTO;

public interface BoardMapper {

		//전체 조회
		List findAll(Map map);
		//입력
		int save(Map map);
		//레코드 하나
		BoardDTO findByNo(Map map);
		//번호로 조회해서 레코드 하나 삭제
		int deleteByNo(BoardDTO record);
		//번호로 조회해서 레코드 하나 수정
		int updateByNo(BoardDTO record);
		//전체 레코드 수 조회
		int count(Map map);
}
